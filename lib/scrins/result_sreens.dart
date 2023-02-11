import 'package:flutter/material.dart';
import 'package:quiz2/colors/colors.dart';
import 'package:quiz2/main.dart';

class ResultSreen extends StatefulWidget {
  final int score;
  ResultSreen(this.score, {super.key});

  @override
  State<ResultSreen> createState() => _ResultSreenState();
}

class _ResultSreenState extends State<ResultSreen> {
  @override
  Widget build(BuildContext context) {
    Color secondColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Азamат!!',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'сенин баан',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "${widget.score}",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hompage()));
              },
              elevation: 0.0,
              color: AppColors.red,
              textColor: AppColors.yelow,
              child: Text("кайталоо"),
            )
          ],
        ),
      ),
    );
  }
}
