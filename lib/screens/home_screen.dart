import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
              height: size.height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,),
              child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(text: "today?",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ))
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
