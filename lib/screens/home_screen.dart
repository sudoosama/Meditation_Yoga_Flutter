import 'package:testing/colorsfile.dart';
import 'package:testing/screens/detail_screen.dart';
import 'package:testing/widget/book_rating.dart';
import 'package:testing/widget/reading_card_list.dart';
import 'package:flutter/material.dart';
import 'package:testing/widget/two_sided_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(
                              text: "What are you \nreading ",
                              style: TextStyle(
                                fontSize: 30,
                              )),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "images/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Grey Venchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "images/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.8,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.display1,
                              children: [
                                TextSpan(
                                    text: "Best of the ",
                                    style: TextStyle(
                                      fontSize: 25,
                                    )),
                                TextSpan(
                                  text: "day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ]),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                       left: 30,right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
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

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
              height: 185,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.43),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 11,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "How To Win \nFriend & Influence",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "Grey Venchur",
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win "
                          "the game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "images/book-3.png",
              width: size.width * .27,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radius: 24,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
