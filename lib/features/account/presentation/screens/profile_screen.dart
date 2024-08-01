// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:photo_app/shared/presentation/widgets/bottomWidget.dart';
//
// import '../../../user/domain/providers/current_user_provider.dart';
//
// @RoutePage()
// class UserProfileScreen extends ConsumerWidget {
//   const UserProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currentUserAsyncValue = ref.watch(currentUserProvider);
//
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         scrolledUnderElevation: 0.0,
//         foregroundColor: Colors.transparent,
//         elevation: 0,
//         toolbarOpacity: 0,
//         shadowColor: Colors.transparent,
//       ),
//       body: currentUserAsyncValue.when(
//         data: (currentUser) {
//           return Container(
//             color: Colors.white,
//             width: double.infinity,
//             height: double.infinity,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 100),
//                   CircleAvatar(
//                     radius: 64,
//                     backgroundImage: CachedNetworkImageProvider(
//                       currentUser.image.isNotEmpty
//                           ? currentUser.image
//                           : 'https://firebasestorage.googleapis.com/v0/b/photo-app-283914.appspot.com/o/pictures%2F1719369120607.jpg?alt=media&token=66949539-3ad0-43ca-a692-870270083174', // Placeholder image
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     currentUser.email,
//                     style: const TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     currentUser.location,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const FollowButton(),
//                   const MessageButton(),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: MasonryGridView.count(
//                       physics: const NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 15,
//                       crossAxisSpacing: 15,
//                       itemCount: currentUser.pictures.length,
//                       itemBuilder: (context, index) {
//                         final picture = currentUser.pictures[index];
//                         return CachedNetworkImage(
//                           imageUrl: currentUser.pictures[index],
//                           fit: BoxFit.cover,
//                           placeholder: (context, url) => Center(
//                               child: SizedBox(width: 20,height: 20,
//                                   child: const CircularProgressIndicator())),
//                           errorWidget: (context, url, error) =>
//                               const Icon(Icons.error),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//         loading: () => const Center(child: CircularProgressIndicator()),
//         error: (error, stackTrace) =>
//             Center(child: Text('Error loading user: $error')),
//       ),
//       bottomNavigationBar: const CustomBottomNavigationBar(),
//     );
//   }
// }
//
// class MessageButton extends StatelessWidget {
//   const MessageButton({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
//       child: Container(
//         width: double.infinity,
//         child: OutlinedButton(
//           style: OutlinedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             side: const BorderSide(
//               color: Colors.black,
//               width: 2.0,
//             ),
//           ),
//           onPressed: () {
//             // Message action
//           },
//           child: const Text(
//             'MESSAGE',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class FollowButton extends StatelessWidget {
//   const FollowButton({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
//       child: Container(
//         width: double.infinity,
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             backgroundColor: Colors.black,
//           ),
//           onPressed: () {
//             // Follow action
//           },
//           child: const Text(
//             'FOLLOW',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
