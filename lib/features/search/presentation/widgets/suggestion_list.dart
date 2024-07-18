import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/domain/providers/suggestion/suggestion_provider.dart';

class SuggestionList extends ConsumerWidget {
  const SuggestionList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestions = ref.watch(suggestionProvider);

    final screenSize = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    // Define responsive font sizes
    final double titleFontSize = isPortrait ? 20 : 24;
    final double subtitleFontSize = isPortrait ? 16 : 20;

    return suggestions.when(
      data: (suggestions) {
        print('Data fetched with ${suggestions.length} items');
        return suggestions.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/not_found.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Not found",
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "We're sorry, the key word you were looking for could not be found. Please try again with another key words.",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            : ListView.builder(
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  final suggestion = suggestions[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/station_marker.svg',
                          width: 50,
                          height: 50,
                        ),
                        title: Text(
                          suggestion.locationName,
                          style: TextStyle(
                            fontFamily: 'Exo',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),

                          //Theme.of(context).textTheme.displayMedium,
                        ),
                        subtitle: Text(
                          '${suggestion.street}, ${suggestion.district}, ${suggestion.city}',
                          style: TextStyle(
                            fontFamily: 'Exo',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),

                          /*Theme.of(context).textTheme.bodySmall,*/
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () => print("Tapped on item $index"),
                      ),
                      Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 1,
                      ),
                    ],
                  );
                },
              );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
