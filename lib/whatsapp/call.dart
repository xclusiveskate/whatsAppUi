import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _StatusState();
}

class _StatusState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 229, 229, 229),
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            title: Text("Omotola"),
            subtitle: Text("Alleft"),
            trailing: Icon(Icons.video_call)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.phone_callback_sharp,
        ),
      ),
    );
  }
}
