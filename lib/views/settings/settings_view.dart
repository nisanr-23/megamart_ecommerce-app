import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:megamart/views/auth/login_screen.dart';
import 'account_info_update.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountInformationView()),
              );
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
                _showLogoutConfirmation(context);
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

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _logout(context);
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  void _logout(BuildContext context) async {
    // Clear user data and set login status to false
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);

    // Navigate to the login screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LogInScreen()),
    );
  }
}
