import "package:flutter/material.dart";
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContentComponent extends StatelessWidget {
  const ContentComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String synopsis =
        "The second son of a Mafia boss, Kinn Theerapanyakul, is fleeing from an enemy when he meets Porsche, an enterprising young bartender. Porsche agrees to help defend Kinn from his attackers for a price.\r\n\r\nPorsche's martial arts skills impress, and spurred on by his father, Kinn seeks to hire Porsche as one of his personal bodyguards. Porsche is opposed and rejects Kinn’s offer despite his attempts at intimidation.  It isn't until Porsche's family home and his ability to care for his brother are threatened that he acquiesces and moves onto the Theerapanyakul property. \r\n\r\nIt's not a smooth transition into the unorthodox, violent job, and his relationship with Kinn vacillates between strained and playful. When his feelings for Kinn take an unexpected turn, his work becomes even more high-stakes.";
    String? videoId;
    videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=dZvpNreGVOc");

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId != null ? videoId : '',
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          elevation: 0.0,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trailer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: YoutubePlayer(
                    controller: _controller,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 0.0,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                text: synopsis,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Actors",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ],
            ),
          ),
        )
      ],
    );
  }
}
