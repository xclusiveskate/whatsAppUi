import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  ScrollController scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: scroll,
        thumbVisibility: true,
        trackVisibility: true,
        child: SingleChildScrollView(
          controller: scroll,
          scrollDirection: Axis.vertical,
          child: Container(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                controller: scroll,
                itemCount: chat.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    onLongPress: () {},
                    leading: chat[index]["leading"],
                    title: chat[index]["title"],
                    subtitle: chat[index]["subtitle"],
                    trailing: chat[index]["trailing"],
                  );
                }),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}

Widget MyTime() {
  var date = DateTime.now();
  return Text("${date.hour.toString()} : ${date.minute.toString()}");
}

List chat = [
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Adesola",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Hello, how are you doing"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Omotola",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("When are you coming to school"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Mr Akpabio",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Are you coming to class tommorrow?"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Fredrick simpson",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("There's going to be a test on monday"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Festus kind",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("It's going to take a very long time "),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Henry john",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("I am coming to your side in few weeks"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Simpson",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Hello, how are you doing"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Simeon paul",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Hello, how are you doing"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Steven lucky",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Hello, how are you doing"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Omodasola",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Hello, how are you doing"),
    "trailing": MyTime(),
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
    ),
    "title": const Text(
      "Ajenikoko",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "subtitle": const Text("Hello, how are you doing"),
    "trailing": MyTime(),
  },
];
