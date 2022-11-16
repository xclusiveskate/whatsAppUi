import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          ListTile(
            // selected: false,
            onTap: () {
              print("Tapped");
            },
            onLongPress: () {},
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 229, 229, 229),
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            title: const Text("Raymond"),
            subtitle:
                const Text(overflow: TextOverflow.ellipsis, "Hello there"),
            trailing: MyTime(),
          ),
          ListTile(
            // selected: false,
            onTap: () {
              print("Tapped");
            },
            onLongPress: () {},
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 229, 229, 229),
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            title: const Text("Omotola"),
            subtitle: const Text(
                overflow: TextOverflow.ellipsis,
                "cvdshbvsyibhsludbisdubsudbvuisbdvsuibvduibsudbcsubvusdbvcsudbvsubdvusbvsudbcsdu"),
            trailing: MyTime(),
          ),
          ListTile(
            // selected: false,
            onTap: () {
              print("Tapped");
            },
            onLongPress: () {},
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 229, 229, 229),
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            title: const Text("Omotola"),
            subtitle: const Text(
                overflow: TextOverflow.ellipsis,
                "cvdshbvsyibhsludbisdubsudbvuisbdvsuibvduibsudbcsubvusdbvcsudbvsubdvusbvsudbcsdu"),
            trailing: MyTime(),
          ),
          ListTile(
            // selected: false,
            onTap: () {
              print("Tapped");
            },
            onLongPress: () {},
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 229, 229, 229),
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            title: const Text("Omotola"),
            subtitle: const Text(
                overflow: TextOverflow.ellipsis,
                "cvdshbvsyibhsludbisdubsudbvuisbdvsuibvduibsudbcsubvusdbvcsudbvsubdvusbvsudbcsdu"),
            trailing: MyTime(),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}

Widget MyTime() {
  var date = DateTime.now();
  return Text("${date.hour.toString()} : ${date.minute.toString()}");
}
