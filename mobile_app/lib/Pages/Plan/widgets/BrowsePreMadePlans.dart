import 'package:flutter/material.dart';

class BrowsePreMadePlans extends StatelessWidget {
  const BrowsePreMadePlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                'assets/PreMadePlanPhoto.jpg',
                opacity: const AlwaysStoppedAnimation(0.9),
              ),
              const Center(
                  child: Text('BROWSE PRE MADE PLANS',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
