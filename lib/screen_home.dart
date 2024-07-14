import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Person $index'),
                  subtitle: Text('Message $index'),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://cdn4.sharechat.com/girlswhatsappdp_18223d5_1611198658236_sc_cmprsd_40.jpg?tenant=sc&referrer=pwa-sharechat-service&f=rsd_40.jpg'),
                    backgroundColor: Colors.green,
                  ),
                  trailing: Text('1$index:00 AM'),
                );

              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 50)),
    );
  }
}
