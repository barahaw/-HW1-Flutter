import 'package:flutter/material.dart';
import 'package:hw_1/classes/info.dart';

class Playlistx extends StatelessWidget {
  Playlistx({super.key});

  final List<info> songs = [
    info(
      title: "Blinding Lights",
      subtitle: "The Weeknd",
      imgsrc: "assets/images/wek.jpeg",
      rate: "4.5",
    ),
    info(
      title: "Wildflowers",
      subtitle: "Billie Eilish",
      imgsrc: "assets/images/billie.jpg",
      rate: "4.7",
    ),
    info(
      title: "birds of a feather",
      subtitle: "Billie Eilish",
      imgsrc: "assets/images/billie.jpg",
      rate: "5.0",
    ),
    info(
      title: "Romantic Homicide",
      subtitle: "D4vd",
      imgsrc: "assets/images/Romantic_Homicide.png",
      rate: "4.6",
    ),
    info(
      title: "وينك يا شمس ",
      subtitle: "Synaptik",
      imgsrc: "assets/images/wenek.jpeg",
      rate: "4.8",
    ),
    info(
      title: "As It Was",
      subtitle: "Harry Styles",
      imgsrc: "assets/images/as-it-was.jpg",
      rate: "4.8",
    ),
    info(
      title: "Save Your Tears",
      subtitle: "The Weeknd",
      imgsrc: "assets/images/wek.jpeg",
      rate: "3.9",
    ),
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();
  TextEditingController imgsrcController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.teal],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/spotify.png",
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),

                    Text(
                      "spotify",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.add),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(137, 70, 69, 69),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        "My Music ",
                        style: TextStyle(color: Colors.white38),
                      ),
                      Text("Shred  ", style: TextStyle(color: Colors.white38)),
                      Text("Feed ", style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),

                // TextField(
                //   controller: titleController,
                //   decoration: InputDecoration(label: Text("Title")),
                // ),
                // TextField(
                //   controller: subtitleController,
                //   decoration: InputDecoration(label: Text("Subtitle")),
                // ),
                // TextField(
                //   controller: imgsrcController,
                //   decoration: InputDecoration(label: Text("Image Source")),
                // ),
                // TextField(
                //   controller: rateController,
                //   decoration: InputDecoration(label: Text("Rate")),
                // ),
                // SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: songs.length,
                    itemBuilder: (context, index) {
                      return Cards(infocard: songs[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final info infocard;
  const Cards({required this.infocard, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(infocard.imgsrc, width: 40, height: 40),
          ),
        ),
        title: Text(infocard.title, style: TextStyle(color: Colors.white)),
        subtitle: Text(
          infocard.subtitle,
          style: TextStyle(color: Colors.white70),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.play_arrow, color: Colors.white38),

            Column(
              children: [
                Icon(Icons.local_fire_department, color: Colors.white38),
                Text(infocard.rate, style: TextStyle(color: Colors.white38)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
