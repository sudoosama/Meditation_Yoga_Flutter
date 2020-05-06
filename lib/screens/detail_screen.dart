import 'package:flutter/material.dart';
import 'package:testing/colorsfile.dart';
import 'package:testing/widget/book_rating.dart';
import 'package:testing/widget/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Crushing &",
                                    style: Theme.of(context).textTheme.display1,
                                  ),
                                  Text(
                                    "Influence",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Text("When the earth was flat and everyone wanted to find the good friend and winning with an A game of with all the things you have.",
                                            maxLines: 5,
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: kLightBlackColor,
                                            ),),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            RoundedButton(
                                              text: "Read",
                                              verticalPadding: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},),
                                          BookRating(score: 4.9)
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              'images/book-1.png',
                              height: 200,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
