import 'package:e_wms_mobile/constants/auth.dart';
import 'package:e_wms_mobile/helpers/auth_helper.dart';
import 'package:flutter/material.dart';

class AuthService {
  AuthService(this._store);
  final UserStore _store;

  // Null means signed out
  final ValueNotifier<User?> currentUser = ValueNotifier<User?>(null);

  bool get isSignedIn => currentUser.value != null;

  Future<void> signUp(String email, String password) async {
    await _store.createUser(email.trim(), password);
    // Auto-login after sign up
    currentUser.value = User(email.trim(), password);
  }

  Future<void> signIn(String email, String password) async {
    final user = await _store.signIn(email.trim(), password);
    currentUser.value = user;
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(milliseconds: 150));
    currentUser.value = null;
  }
}

final auth = AuthService(UserStore());

// -------------------- UI PAGES --------------------
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   static const route = '/home';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: [
//           IconButton(
//             tooltip: 'Sign out',
//             onPressed: () async {
//               await auth.signOut();
//               if (context.mounted) {
//                 Navigator.of(
//                   context,
//                 ).pushNamedAndRemoveUntil(SignInPage.route, (_) => false);
//               }
//             },
//             icon: const Icon(Icons.logout),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Icon(Icons.verified_user_outlined, size: 64),
//             const SizedBox(height: 12),
//             ValueListenableBuilder<User?>(
//               valueListenable: auth.currentUser,
//               builder: (context, user, _) => Text(
//                 'Signed in as: ${user?.email ?? '-'}',
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//             ),
//             const SizedBox(height: 24),
//             FilledButton(
//               onPressed: () => Navigator.of(
//                 context,
//               ).push(MaterialPageRoute(builder: (_) => const ProfilePage())),
//               child: const Text('Go to Profile'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Profile')),
//       body: Center(
//         child: Card(
//           margin: const EdgeInsets.all(16),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Your profile',
//                   style: Theme.of(context).textTheme.titleLarge,
//                 ),
//                 const SizedBox(height: 12),
//                 ValueListenableBuilder<User?>(
//                   valueListenable: auth.currentUser,
//                   builder: (context, user, _) =>
//                       Text('Email: ${user?.email ?? '-'}'),
//                 ),
//                 const SizedBox(height: 12),
//                 const Text('This is a placeholder page.'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
