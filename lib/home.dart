import 'package:flutter/material.dart';
import 'package:mirrorfly_uikit/loginScreen%20.dart';
import 'package:mirrorfly_uikit_plugin/app/model/arguments.dart';
import 'package:mirrorfly_uikit_plugin/app/routes/route_settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          const Center(child: Text('Welcome to the Home Screen!')),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.contacts,
                arguments: ContactListArguments(),
              );
            },
            child: const Text('Go to Contacts List'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.dashboard,
                arguments: DashboardViewArguments(),
              );
            },
            child: const Text('Go to Dashboard'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.profile);
            },
            child: const Text('Go to Profile'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.settings);
            },
            child: const Text('Go to Settings'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
            child: const Text('Go to Login'),
          ),
        ],
      ),
    );
  }
}
