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
                    backgroundImage:AssetImage('assets/images/download.jpeg'),
                    backgroundColor: Colors.green,
                  ),
                  trailing: Text('$index:00 AM'),
                );

              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 50)),
    );
  }
}
