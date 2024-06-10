import 'package:bmi_app/widgets/info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  double? _deviceHeight, _deviceWidth;
  int _age = 26, _weight = 75;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Container(
        height: _deviceHeight! * 0.85,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ageSelectContainer(),
                _weightSelectContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  Widget _ageSelectContainer() {
    return InfoCard(
      height: _deviceHeight! * 0.20,
      width: _deviceWidth! * 0.45,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Your Age",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Text(
            _age.toString(),
            style: const TextStyle(
                fontSize: 45, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _age--;
                    });
                  },
                  textStyle: const TextStyle(fontSize: 25, color: Colors.red),
                  child: const Text("-"),
                ),
              ),
              SizedBox(
                width: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _age++;
                    });
                  },
                  textStyle: const TextStyle(fontSize: 25, color: Colors.blue),
                  child: const Text("+"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _weightSelectContainer() {
    return InfoCard(
      height: _deviceHeight! * 0.20,
      width: _deviceWidth! * 0.45,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Your Weight lbs",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Text(
            _weight.toString(),
            style: const TextStyle(
                fontSize: 45, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _weight--;
                    });
                  },
                  textStyle: const TextStyle(fontSize: 25, color: Colors.red),
                  child: const Text("-"),
                ),
              ),
              SizedBox(
                width: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _weight++;
                    });
                  },
                  textStyle: const TextStyle(fontSize: 25, color: Colors.blue),
                  child: const Text("+"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
