import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/route/presentation/providers/end_provider.dart';
import 'package:ev_charger/features/route/presentation/providers/from_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../repositories/marker/entities/charger_marker_entity.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/permission/screens/permission_screen.dart';
import '../providers/start_provider.dart';
import '../providers/to_search_provider.dart';
import '../widgets/route_suggestion_list.dart';
import '../widgets/search_button.dart';
import 'dart:async';
import '../../domain/providers/route_from_provider.dart';
import '../../domain/providers/route_to_provider.dart';

@RoutePage()
class RouteSearchScreen extends ConsumerStatefulWidget {
  const RouteSearchScreen({Key? key}) : super(key: key);

  @override
  _RouteSearchScreenState createState() => _RouteSearchScreenState();
}

class _RouteSearchScreenState extends ConsumerState<RouteSearchScreen> {
  late TextEditingController _fromSearchController;
  late TextEditingController _toSearchController;
  late FocusNode _fromSearchFocusNode;
  late FocusNode _toSearchFocusNode;
  bool _showClearIconFrom = false;
  bool _showClearIconTo = false;
  Timer? _debounceFrom;
  Timer? _debounceTo;

  Future<void> _checkLocationPermission(bool isStart) async {
    final permissionState = ref.read(permissionProvider);

    if (!permissionState.hasPermission) {
      await showDialog(
        context: context,
        builder: (context) => const PermissionScreen(),
      );
      ref.read(permissionProvider.notifier).reCheckPermission();
    }
    await _getCurrentLocation(isStart);
  }

  Future<void> _getCurrentLocation(bool isStart) async {
    await ref.read(userLocationProvider.notifier).getUserLocation();
    final currentLocation = ref.read(userLocationProvider);
    if (currentLocation != null) {
      LatLng targetLocation =
          LatLng(currentLocation.latitude, currentLocation.longitude);

      if (isStart) {
        ref.read(startProvider.notifier).updateStartLocation(
              ChargerMarkerEntity(
                id: 'Your Current Location',
                latitude: targetLocation.latitude,
                longitude: targetLocation.longitude,
              ),
            );
        ref.read(FromSearchProvider.notifier).state =
            AppLocalizations.of(context).translate('Your location');

        setState(() {
          _fromSearchController.text =
              AppLocalizations.of(context).translate('Your location');
        });

        _fromSearchFocusNode.unfocus();
        _showClearIconFrom = false;
        print('start location: ${FromSearchProvider.notifier}');
      } else {
        ref.read(endProvider.notifier).updateEndLocation(
              ChargerMarkerEntity(
                id: 'Your Current Location',
                latitude: targetLocation.latitude,
                longitude: targetLocation.longitude,
              ),
            );
        ref.read(ToSearchProvider.notifier).state =
            AppLocalizations.of(context).translate('Your location');
        setState(() {
          _toSearchController.text =
              AppLocalizations.of(context).translate('Your location');
        });
        _toSearchFocusNode.unfocus();
        _showClearIconTo = false;
        print('end location: ${endProvider.notifier}');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    final fromSearchQuery = ref.read(FromSearchProvider);
    final toSearchQuery = ref.read(ToSearchProvider);

    _fromSearchController = TextEditingController(text: fromSearchQuery);
    _toSearchController = TextEditingController(text: toSearchQuery);

    _fromSearchFocusNode = FocusNode();
    _toSearchFocusNode = FocusNode();

    _fromSearchFocusNode.addListener(() {
      setState(() {
        _showClearIconFrom = _fromSearchFocusNode.hasFocus;
      });
    });
    _toSearchFocusNode.addListener(() {
      setState(() {
        _showClearIconTo = _toSearchFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _fromSearchController.dispose();
    _toSearchController.dispose();
    _fromSearchFocusNode.dispose();
    _toSearchFocusNode.dispose();
    _debounceFrom?.cancel();
    _debounceTo?.cancel();

    ref.read(FromSearchProvider.notifier).state = '';
    ref.read(ToSearchProvider.notifier).state = '';

    super.dispose();
  }

  void _onSuggestionSelectedFrom(
      String locationName, String street, String district, String city) {
    ref.read(FromSearchProvider.notifier).state =
        '$locationName, $street, $district, $city';
    setState(() {
      _fromSearchController.text = '$locationName, $street, $district, $city';
    });
    _fromSearchFocusNode.unfocus();
    _showClearIconFrom = false;
  }

  void _onSuggestionSelectedTo(
      String locationName, String street, String district, String city) {
    ref.read(ToSearchProvider.notifier).state =
        '$locationName, $street, $district, $city';
    setState(() {
      _toSearchController.text = '$locationName, $street, $district, $city';
    });
    _toSearchFocusNode.unfocus();
    _showClearIconTo = false;
  }

  void _clearFromSearchField() {
    setState(() {
      ref.read(FromSearchProvider.notifier).state = '';
      ref.read(startProvider.notifier).updateStartLocation(
          const ChargerMarkerEntity(id: '', latitude: 0, longitude: 0));
      _fromSearchController.clear();
      _fromSearchFocusNode.requestFocus();
    });
  }

  void _clearToSearchField() {
    setState(() {
      ref.read(ToSearchProvider.notifier).state = '';
      ref.read(endProvider.notifier).updateEndLocation(
          const ChargerMarkerEntity(id: '', latitude: 0, longitude: 0));
      _toSearchController.clear();
      _toSearchFocusNode.requestFocus();
    });
  }

  void _onFromSearchChanged(String text) {
    if (_debounceFrom?.isActive ?? false) _debounceFrom?.cancel();
    _debounceFrom = Timer(const Duration(milliseconds: 350), () {
      ref.read(FromSearchProvider.notifier).state = text;
    });
  }

  void _onToSearchChanged(String text) {
    if (_debounceTo?.isActive ?? false) _debounceTo?.cancel();
    _debounceTo = Timer(const Duration(milliseconds: 350), () {
      ref.read(ToSearchProvider.notifier).state = text;
    });
  }

  void _onFromSearchSubmitted(String text) {
    final suggestions = ref.read(RouteFromProvider);
    suggestions.when(
      data: (data) {
        if (text.isNotEmpty && data.isNotEmpty) {
          final firstSuggestion = data.first;
          _onSuggestionSelectedFrom(
            firstSuggestion.locationName,
            firstSuggestion.street,
            firstSuggestion.district,
            firstSuggestion.city,
          );
          ref.read(startProvider.notifier).updateStartLocation(
                ChargerMarkerEntity(
                  id: firstSuggestion.locationName +
                      firstSuggestion.street +
                      firstSuggestion.district +
                      firstSuggestion.city,
                  latitude: firstSuggestion.latitude,
                  longitude: firstSuggestion.longitude,
                ),
              );
        }
      },
      loading: () {},
      error: (error, stack) {},
    );
  }

  void _onToSearchSubmitted(String text) {
    final suggestions = ref.read(RouteToProvider);
    suggestions.when(
      data: (data) {
        if (text.isNotEmpty && data.isNotEmpty) {
          final firstSuggestion = data.first;
          _onSuggestionSelectedTo(
            firstSuggestion.locationName,
            firstSuggestion.street,
            firstSuggestion.district,
            firstSuggestion.city,
          );
          ref.read(endProvider.notifier).updateEndLocation(
                ChargerMarkerEntity(
                  id: firstSuggestion.locationName +
                      firstSuggestion.street +
                      firstSuggestion.district +
                      firstSuggestion.city,
                  latitude: firstSuggestion.latitude,
                  longitude: firstSuggestion.longitude,
                ),
              );
        }
      },
      loading: () {},
      error: (error, stack) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final fromSearchQuery = ref.watch(FromSearchProvider);
    final toSearchQuery = ref.watch(ToSearchProvider);
    final startLocation = ref.watch(startProvider);
    final endLocation = ref.watch(endProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => context.router.pop(),
        ),
        title: Text(
          AppLocalizations.of(context).translate('Route Search'),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: false,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context).translate('From'),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: screenSize.height * 0.010),
              Container(
                padding: EdgeInsets.symmetric(
                  //vertical: screenSize.height * 0.004,
                  horizontal: screenSize.width * 0.02,
                ),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _fromSearchController,
                        focusNode: _fromSearchFocusNode,
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)
                              .translate('Choose your Start Location'),
                          border: InputBorder.none,
                        ),
                        style:
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  color: Colors.black,
                                ),
                        onChanged: _onFromSearchChanged,
                        onSubmitted: _onFromSearchSubmitted,
                      ),
                    ),
                    if (_showClearIconFrom)
                      IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _clearFromSearchField,
                      ),
                    SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.020),
              Text(
                AppLocalizations.of(context).translate('To'),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: screenSize.height * 0.010),
              Container(
                padding: EdgeInsets.symmetric(
                  //vertical: screenSize.height * 0.004,
                  horizontal: screenSize.width * 0.02,
                ),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _toSearchController,
                        focusNode: _toSearchFocusNode,
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)
                              .translate('Choose your Destination'),
                          border: InputBorder.none,
                        ),
                        style:
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  color: Colors.black,
                                ),
                        onChanged: _onToSearchChanged,
                        onSubmitted: _onToSearchSubmitted,
                      ),
                    ),
                    if (_showClearIconTo)
                      IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _clearToSearchField,
                      ),
                    SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.020),
              Expanded(
                child: _fromSearchFocusNode.hasFocus
                    ? fromSearchQuery.isEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: screenSize.height * 0.02),
                              if (endLocation.id != 'Your Current Location')
                                InkWell(
                                  onTap: () => _checkLocationPermission(true),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: screenSize.height * 0.014,
                                      horizontal: 24.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(12.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 2,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.navigation,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                        const SizedBox(width: 14),
                                        Text(
                                          AppLocalizations.of(context)
                                              .translate('Your location'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              SizedBox(height: screenSize.height * 0.2),
                              Center(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Enter your Start Location.'),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ],
                          )
                        : RouteSuggestionList(
                            onSuggestionSelected: _onSuggestionSelectedFrom,
                            isStart: true,
                          )
                    : _toSearchFocusNode.hasFocus
                        ? toSearchQuery.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: screenSize.height * 0.02),
                                  if (startLocation.id != 'Your Current Location')
                                    InkWell(
                                      onTap: () =>
                                          _checkLocationPermission(false),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: screenSize.height * 0.014,
                                          horizontal: 24.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 2,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.navigation,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                            const SizedBox(width: 14),
                                            Text(
                                              AppLocalizations.of(context)
                                                  .translate('Your location'),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  SizedBox(height: screenSize.height * 0.2),
                                  Center(
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate('Enter your Destination.'),
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              )
                            : RouteSuggestionList(
                                onSuggestionSelected: _onSuggestionSelectedTo,
                                isStart: false,
                              )
                        : Center(
                            child: fromSearchQuery.isEmpty &&
                                    toSearchQuery.isEmpty
                                ? Text(
                                    AppLocalizations.of(context).translate(
                                        'Enter your Start Location and Destination.'),
                                    style: Theme.of(context).textTheme.bodySmall,
                                  )
                                : fromSearchQuery.isEmpty &&
                                        toSearchQuery.isNotEmpty
                                    ? Text(
                                        AppLocalizations.of(context).translate(
                                            'Enter your Start Location.'),
                                        style:
                                            Theme.of(context).textTheme.bodySmall,
                                      )
                                    : toSearchQuery.isEmpty &&
                                            fromSearchQuery.isNotEmpty
                                        ? Text(
                                            AppLocalizations.of(context)
                                                .translate(
                                                    'Enter your Destination.'),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          )
                                        : Text(
                                            AppLocalizations.of(context)
                                                .translate('Search for routes.'),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                          ),
              ),
              const SearchRouteButton(),
              SizedBox(height: screenSize.height * 0.020),
            ],
          ),
        ),
      ),
    );
  }
}
