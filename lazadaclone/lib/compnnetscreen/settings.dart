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
        'subtitle': 'Recieve exclusive offers and personal update',
        'trailer': ''
      },
      {
        'name': 'Country',
        'subtitle': 'Philhipines Is your current country',
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
      backgroundColor: Color(0xffeff1f5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            color: Colors.white,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: settings.length,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    settings[index]['name'],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(settings[index]['subtitle'] != ''
                      ? settings[index]['subtitle']
                      : ''),
                  leading: settings[index]['trailer'] != ''
                      ? SizedBox(
                          height: 30,
                          width: 50,
                          child: Image.network(
                            settings[index]['trailer'],
                            fit: BoxFit.fill,
                          ),
                        )
                      : null,
                );
              },
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
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
