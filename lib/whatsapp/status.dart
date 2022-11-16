import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  ScrollController scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: scroll,
        child: SingleChildScrollView(
          controller: scroll,
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                // color: Colors.blue,
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    onTap: () {},
                    onLongPress: () {},
                    leading: Stack(
                      fit: StackFit.loose,
                      clipBehavior: Clip.none,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Color.fromARGB(255, 202, 193, 193),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                            right: -1,
                            bottom: -5.0,
                            child: Card(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                    title: const Text(
                      "My status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Tap to add status update"),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Recent Updates",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                controller: scroll,
                shrinkWrap: true,
                itemCount: recent.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: recent[index]["leading"],
                    title: recent[index]["title"],
                    subtitle: recent[index]["subtitle"],
                  );
                }),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Viewed Updates",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                controller: scroll,
                shrinkWrap: true,
                itemCount: viewed.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: viewed[index]["leading"],
                    title: viewed[index]["title"],
                    subtitle: viewed[index]["subtitle"],
                  );
                }),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

List recent = [
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Adarawa"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Keshinro"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Kendrick"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Peter"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Adarawa"),
    "subtitle": const Text("35 minutes ago")
  },
];
List viewed = [
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Cristiano"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Lionel"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("Jamil"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("sebastian"),
    "subtitle": const Text("35 minutes ago")
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.green,
    ),
    "title": const Text("franklin"),
    "subtitle": const Text("35 minutes ago")
  },
];
