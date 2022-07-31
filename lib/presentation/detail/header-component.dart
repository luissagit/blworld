import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );

    return Card(
      color: Colors.white,
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "https://i.mydramalist.com/rwYeN_4f.jpg",
                  height: 180,
                ),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Title: ',
                        style: labelStyle,
                      ),
                      Text('KinnPorsche'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Country: ',
                        style: labelStyle,
                      ),
                      Text('Thailand'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Episodes: ',
                        style: labelStyle,
                      ),
                      Text('14'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Aired: ',
                        style: labelStyle,
                      ),
                      Text('Apr 2, 2022 - Jul 9, 2022'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Rating: ',
                        style: labelStyle,
                      ),
                      Text(
                        '18+ Restricted',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  RatingBarIndicator(
                    rating: 8.2 / 2,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20,
                  ),
                  SizedBox(height: 5,),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Rate this series',
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
