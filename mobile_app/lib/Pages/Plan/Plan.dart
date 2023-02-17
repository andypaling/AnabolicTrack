import 'package:mobile_app/Pages/Plan/widgets/BrowsePreMadePlans.dart';
import 'package:mobile_app/Pages/Plan/widgets/CreateNewPlan.dart';
import 'package:mobile_app/Pages/Plan/widgets/CurrentProgramme.dart';
import 'package:mobile_app/Pages/Plan/widgets/EditPlan.dart';
import 'package:mobile_app/main.dart';
import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        CurrentProgramme(),
        EditPlan(),
        SizedBox(
          height: 10,
        ),
        CreateNewPlan(),
        SizedBox(
          height: 10,
        ),
        BrowsePreMadePlans(),
      ],
    );
  }
}
