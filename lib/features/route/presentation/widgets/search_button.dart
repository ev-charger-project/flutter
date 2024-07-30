
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../shared/core/localization/localization.dart';

class SearchRouteButton extends StatelessWidget {
  const SearchRouteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // Handle search action
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
    );
  }
}