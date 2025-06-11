import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    List settings = [
      {'name': 'Account information', 'subtitle': '', 'trailer': ''},
      {'name': 'Payment Settings', 'subtitle': '', 'trailer': ''},
      {'name': 'Address Book', 'subtitle': '', 'trailer': ''},
      {
        'name': 'Message',
        'subtitle': 'Receive exclusive offers and personal updates',
        'trailer': ''
      },
      {
        'name': 'Country',
        'subtitle': 'Philippines is your current country',
        'trailer':
            'https://cdn.britannica.com/73/3473-050-3A33E719/Flag-Philippines.jpg'
      },
      {'name': 'Dark Mode', 'subtitle': '', 'trailer': ''},
      {'name': 'Account Security', 'subtitle': '', 'trailer': ''},
      {'name': 'Policies', 'subtitle': '', 'trailer': ''},
      {'name': 'Help', 'subtitle': '', 'trailer': ''},
      {'name': 'Feedback', 'subtitle': '', 'trailer': ''},
    ];

    return Scaffold(
      backgroundColor: const Color(0xffeff1f5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: settings.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 1),
                  child: ListTile(
                    dense: true,
                    title: Text(
                      settings[index]['name'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: settings[index]['subtitle'] != ''
                        ? Text(settings[index]['subtitle'])
                        : null,
                    leading: settings[index]['trailer'] != ''
                        ? SizedBox(
                            height: 30,
                            width: 50,
                            child: Image.network(
                              settings[index]['trailer'],
                              fit: BoxFit.cover,
                            ),
                          )
                        : null,
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: const Text(
              'Logout',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffdb5239),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
