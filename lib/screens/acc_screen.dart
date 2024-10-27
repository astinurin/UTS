import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Asti Nurin Hidayanti',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '+6282331346277',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/img/user_avatar.jpg'),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),

            _buildAccountOption(context, "Account Type", "FULL SERVICE"),
            _buildAccountOption(context, "Account Settings", ""),
            _buildAccountOption(context, "LinkAja Syariah", "Active"),
            _buildAccountOption(context, "Payment Method", ""),
            _buildAccountOption(context, "Email", "asthienoerin@gmail.com"),
            _buildAccountOption(context, "Security Question", "Set"),
            _buildAccountOption(context, "PIN Settings", ""),
            _buildAccountOption(context, "Language", "English"),
            _buildAccountOption(context, "Terms of Service", ""),
            _buildAccountOption(context, "Privacy Policy", ""),
            _buildAccountOption(context, "Help Center", ""),
            _buildAccountOption(context, "Logout", ""),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountOption(BuildContext context, String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Handle option tap if necessary
      },
    );
  }
}
