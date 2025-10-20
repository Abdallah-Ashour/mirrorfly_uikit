// import 'package:mirrorfly_uikit_plugin/app/modules/dashboard/views/dashboard_view.dart';
// import 'package:mirrorfly_uikit_plugin/mirrorfly_uikit_plugin.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _usernameController = TextEditingController();

//   Future<void> _login() async {
//     final username = _usernameController.text.trim();
//     if (username.isEmpty) return;

//     try {
//       var response = await MirrorflyUikit.instance.login(
//         userIdentifier: username,
//         fcmToken: "Your Google FCM Token",
//       );
//       debugPrint("register user $response");

//       Navigator.push(context, MaterialPageRoute(builder: (con)=> const DashboardView()));
//       //{'status': true, 'message': 'Register Success};
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     // try {
//     //   await MirrorflyUikit.instance.login(
//     //     userIdentifier: username,
//     //     password: "123456", // or from API
//     //     displayName: username,
//     //   );

//     //   // Once logged in, navigate to chat
//     //   Navigator.pushReplacement(
//     //     context,
//     //     MaterialPageRoute(builder: (_) => const ChatHomeScreen()),
//     //   );
//     // } catch (e) {
//     //   debugPrint("Login error: $e");
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Login")),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: _usernameController,
//               decoration: const InputDecoration(labelText: "Username"),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(onPressed: _login, child: const Text("Login")),
//           ],
//         ),
//       ),
//     );
//   }
// }
