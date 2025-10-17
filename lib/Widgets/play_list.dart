import 'package:flutter/material.dart';
import 'package:hw_1/classes/info.dart';

class Playlistx extends StatelessWidget {
  Playlistx({super.key});

  final info song1 = info(
    title: "Blinding Lights",
    subtitle: "The Weeknd",
    imgsrc: "assets/images/wek.jpeg",
    rate: "4.5",
  );

  final info song2 = info(
    title: "Wildflowers",
    subtitle: "Billie Eilish",
    imgsrc: "assets/images/billie.jpg",
    rate: "4.7",
  );

  final info song3 = info(
    title: "birds of a feather",
    subtitle: "Billie Eilish",
    imgsrc: "assets/images/billie.jpg",
    rate: "5.0",
  );

  final info song4 = info(
    title: "Romantic Homicide",
    subtitle: "D4vd",
    imgsrc: "assets/images/Romantic_Homicide.png",
    rate: "4.6",
  );

  final info song5 = info(
    title: "وينك يا شمس ",
    subtitle: "Synaptik",
    imgsrc: "assets/images/wenek.jpeg",
    rate: "4.8",
  );

  final info song6 = info(
    title: "As It Was",
    subtitle: "Harry Styles",
    imgsrc: "assets/images/as-it-was.jpg",
    rate: "4.8",
  );

  final info song7 = info(
    title: "Save Your Tears",
    subtitle: "The Weeknd",
    imgsrc: "assets/images/wek.jpeg",
    rate: "3.9",
  );

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
                Expanded(
                  child: ListView(
                    children: [
                      Cards(infocard: song1),
                      Cards(infocard: song2),
                      Cards(infocard: song3),
                      Cards(infocard: song4),
                      Cards(infocard: song5),
                      Cards(infocard: song6),
                      Cards(infocard: song7),
                    ],
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
