import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/providers/user/user_provider.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userProvider);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return userAsyncValue.when(
      data: (user) {
        return Column(
          children: [
            CircleAvatar(
              radius: width * 0.15,
              backgroundImage: const AssetImage(
                'assets/images/avatar_placeholder.png',
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              user.username!,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * 0.01),
            Text(
              user.email!,
              style: const TextStyle(
                  fontSize: 16, color: Colors.grey),
            ),
            if(user.phoneNumber != null) Text(
              user.phoneNumber!,
              style: const TextStyle(
                  fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: height * 0.03),
          ],
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) => Center(
        child: Text(
          'Failed to load user data: $error',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
