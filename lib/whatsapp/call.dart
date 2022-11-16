import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({
    super.key,
  });

  @override
  State<Call> createState() => _StatusState();
}

class _StatusState extends State<Call> {
  ScrollController control = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: control,
        child: SingleChildScrollView(
          controller: control,
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.link_outlined,
                    ),
                  ),
                  title: const Text(
                    "Create call link",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Share a link for your WhatsApp call"),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Recent",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      ListView.builder(
                          controller: control,
                          itemCount: status.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {},
                              onLongPress: () {},
                              leading: status[index]["leading"],
                              title: status[index]["title"],
                              trailing: status[index]["trailing"],
                              subtitle: status[index]["subtitle"],
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.none,
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.phone_callback_sharp,
        ),
      ),
    );
  }
}

List status = [
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 15, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Nicolas",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 15, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Simpson",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 15, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 15, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 15, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 14, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 13, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Master Gon",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 11, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Kendrick",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 10, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Carson",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 9, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Ben",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 9, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 7, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 5, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 4, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 3, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 2, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
  {
    "leading": const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    "title": const Text(
      "Dr Smith",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    "callIcon": const Icon(Icons.missed_video_call),
    "subtitle": const Text("November 1, 10:02pm"),
    "trailing": const Icon(Icons.phone_callback_outlined)
  },
];
