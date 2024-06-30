import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent.withOpacity(0.2),
        appBar: AppBar(
          title: const Text("Settings"),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            _buildSettingsOption(context, 'Account Information', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'Address Book', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'Notification Settings', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'Country', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'Language', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'General', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'Policies', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 1),
            _buildSettingsOption(context, 'Help', () {
              // Add your navigation or functionality here
            }),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Add your logout functionality here
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 20, color: Colors.redAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsOption(BuildContext context, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        child: Text(title),
      ),
    );
  }
}