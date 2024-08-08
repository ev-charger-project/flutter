import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/routes/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../shared/core/localization/localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../presentation/providers/from_search_provider.dart';
import '../../presentation/providers/to_search_provider.dart';

class SearchRouteButton extends ConsumerStatefulWidget {
  const SearchRouteButton({super.key});

  @override
  _SearchRouteButtonState createState() => _SearchRouteButtonState();
}

class _SearchRouteButtonState extends ConsumerState<SearchRouteButton> {
  String _errorMessage = '';

  void _onSearchPressed() {
    final startLocation = ref.read(FromSearchProvider);
    final endLocation = ref.read(ToSearchProvider);

    if (startLocation.isEmpty || endLocation.isEmpty) {
      setState(() {
        _errorMessage = AppLocalizations.of(context)
            .translate('Please fill in your Start Location and Destination.');
      });
    } else {
      setState(() {
        _errorMessage = '';
      });
      context.router.push(const RouteRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        if (_errorMessage.isNotEmpty)
          Text(
            _errorMessage,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
        Center(
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.01),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _onSearchPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    AppLocalizations.of(context).translate('Search'),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
/*class SearchRouteButton extends StatelessWidget {
  const SearchRouteButton({
    super.key,
  });
  String _errorMessage ='';

  void _onSearchPressed() {
    final startLocation = ref.read(startProvider);
    final endLocation = ref.read(endProvider);

    if (startLocation.isEmpty || endLocation.isEmpty) {
      setState(() {
        _errorMessage = 'Please fill in both fields.';
      });
    } else {
      setState(() {
        _errorMessage = '';
      });
      context.router.push(const RouteRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.01),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.router.push(const RouteRoute());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text(
                AppLocalizations.of(context).translate('Search'),
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
