import 'package:mobile_app/Pages/Home/widgets/DaySelector.dart';
import 'package:mobile_app/Pages/Home/widgets/TodaysSteps.dart';
import 'package:mobile_app/Pages/Home/widgets/TodaysWorkoutCard.dart';
import 'package:mobile_app/Pages/Home/widgets/CommentEntry.dart';
import 'package:mobile_app/Pages/Home/widgets/TrackProgress.dart';
import 'package:mobile_app/Pages/Home/widgets/WeightEntry.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const DaySelector(),
        const TodaysWorkoutCard(),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 10
          ),
          child: Row(
            children: const [
              Expanded(
                child: SizedBox(
                  height: 160,
                  child: CommentEntry(),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: SizedBox(
                  height: 160,
                  child: WeightEntry(),
                ),
              ),
            ],
          ),
        ),
        const TrackProgress(),
      ],
    );
  }
}

