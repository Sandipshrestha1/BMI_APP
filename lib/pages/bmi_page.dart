// import 'dart:math';

// import 'package:bmi_app/widgets/info_card.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BMIPage extends StatefulWidget {
//   const BMIPage({super.key});

//   @override
//   State<BMIPage> createState() => _BMIPageState();
// }

// class _BMIPageState extends State<BMIPage> {
//   double? _deviceHeight, _deviceWidth;
//   int _age = 26, _weight = 75, _height = 70, _gender = 0;
//   @override
//   Widget build(BuildContext context) {
//     _deviceHeight = MediaQuery.of(context).size.height;
//     _deviceWidth = MediaQuery.of(context).size.width;
//     return CupertinoPageScaffold(
//       child: Center(
//         child: Container(
//           height: _deviceHeight! * 0.85,
//           color: Colors.white,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _ageSelectContainer(),
//                   _weightSelectContainer(),
//                 ],
//               ),
//               _heightSelectContainer(),
//               _genderSelectContainer(),
//               _calculateBMIButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ignore: unused_element
//   Widget _ageSelectContainer() {
//     return InfoCard(
//       height: _deviceHeight! * 0.20,
//       width: _deviceWidth! * 0.45,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             "Your Age",
//             style: TextStyle(
//                 fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
//           ),
//           Text(
//             _age.toString(),
//             style: const TextStyle(
//                 fontSize: 45, fontWeight: FontWeight.w800, color: Colors.black),
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: 50,
//                 child: CupertinoDialogAction(
//                   onPressed: () {
//                     setState(() {
//                       _age--;
//                     });
//                   },
//                   textStyle: const TextStyle(fontSize: 25, color: Colors.red),
//                   child: const Text("-"),
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 child: CupertinoDialogAction(
//                   onPressed: () {
//                     setState(() {
//                       _age++;
//                     });
//                   },
//                   textStyle: const TextStyle(fontSize: 25, color: Colors.blue),
//                   child: const Text("+"),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _weightSelectContainer() {
//     return InfoCard(
//       height: _deviceHeight! * 0.20,
//       width: _deviceWidth! * 0.45,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             "Your Weight lbs",
//             style: TextStyle(
//                 fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
//           ),
//           Text(
//             _weight.toString(),
//             style: const TextStyle(
//                 fontSize: 45, fontWeight: FontWeight.w800, color: Colors.black),
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: 50,
//                 child: CupertinoDialogAction(
//                   onPressed: () {
//                     setState(() {
//                       _weight--;
//                     });
//                   },
//                   textStyle: const TextStyle(fontSize: 25, color: Colors.red),
//                   child: const Text("-"),
//                 ),
//               ),
//               SizedBox(
//                 width: 50,
//                 child: CupertinoDialogAction(
//                   onPressed: () {
//                     setState(() {
//                       _weight++;
//                     });
//                   },
//                   textStyle: const TextStyle(fontSize: 25, color: Colors.blue),
//                   child: const Text("+"),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _heightSelectContainer() {
//     return InfoCard(
//       height: _deviceHeight! * 0.15,
//       width: _deviceWidth! * 0.90,
//       child: Column(
//         children: [
//           const Text(
//             "Height in ",
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           const Text(
//             "70 ",
//             style: TextStyle(
//               fontSize: 45,
//               fontWeight: FontWeight.w800,
//             ),
//           ),
//           SizedBox(
//             width: _deviceWidth! * 0.80,
//             child: CupertinoSlider(
//               min: 0,
//               max: 100,
//               divisions: 100,
//               value: _height.toDouble(),
//               onChanged: (_value) {
//                 setState(() {
//                   _height = _value.toInt();
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _genderSelectContainer() {
//     return InfoCard(
//       height: _deviceHeight! * 0.11,
//       width: _deviceWidth! * 0.90,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             "Gender",
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           CupertinoSlidingSegmentedControl(
//             groupValue: _gender,
//             children: const {
//               0: Text("Male"),
//               1: Text("Female"),
//             },
//             onValueChanged: (_value) {
//               setState(() {
//                 _gender = _value as int;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _calculateBMIButton() {
//     return Container(
//       height: _deviceHeight! * 0.07,
//       child: CupertinoButton.filled(
//         child: const Text("Calculate BMI"),
//         onPressed: () {
//           if (_height > 0 && _weight > 0 && _age > 0) {
//             double _bmi = 703 * (_weight / pow(_height, 2));
//             print(_bmi);
//             _showResultDialog(_bmi);
//           }
//         },
//       ),
//     );
//   }

//   void _showResultDialog(double _bmi) {
//     String? _status;

//     if (_bmi < 18.5) {
//       _status = "Underweight";
//     } else if (_bmi >= 18.5 && _bmi < 25) {
//       _status = "Normal";
//     } else if (_bmi >= 25 && _bmi < 30) {
//       _status = "OverWeight";
//     } else if (_bmi >= 30) {
//       _status = "obese";
//     }
//     showCupertinoDialog(
//         context: context,
//         builder: (BuildContext _context) {
//           return CupertinoAlertDialog(
//             title: Text(_status!),
//             content: Text(
//               _bmi.toStringAsFixed(2),
//             ),
//             actions: [
//               CupertinoDialogAction(
//                 child: const Text("ok"),
//                 onPressed: () {
//                   Navigator.pop(_context);
//                 },
//               ),
//             ],
//           );
//         });
//   }
// }

import 'dart:math';
import 'package:bmi_app/widgets/info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  double? _deviceHeight, _deviceWidth;
  int _age = 26, _weight = 75, _height = 70, _gender = 0;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Center(
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
              ),
              _heightSelectContainer(),
              _genderSelectContainer(),
              _calculateBMIButton(),
            ],
          ),
        ),
      ),
    );
  }

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
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    _age = max(0, _age - 1); // Prevent negative age
                  });
                },
                child: const Text("-",
                    style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    _age++;
                  });
                },
                child: const Text("+",
                    style: TextStyle(fontSize: 25, color: Colors.blue)),
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
            "Your Weight (lbs)",
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
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    _weight = max(0, _weight - 1); // Prevent negative weight
                  });
                },
                child: const Text("-",
                    style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    _weight++;
                  });
                },
                child: const Text("+",
                    style: TextStyle(fontSize: 25, color: Colors.blue)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _heightSelectContainer() {
    return InfoCard(
      height: _deviceHeight! * 0.15,
      width: _deviceWidth! * 0.90,
      child: Column(
        children: [
          const Text(
            "Height (inches)",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            _height.toString(),
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            //height: 90,
            //_deviceHeight,
            width: _deviceWidth! * 0.80,
            child: CupertinoSlider(
              min: 0,
              max: 100,
              divisions: 100,
              value: _height.toDouble(),
              onChanged: (_value) {
                setState(() {
                  _height = _value.toInt();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _genderSelectContainer() {
    return InfoCard(
      height: _deviceHeight! * 0.11,
      width: _deviceWidth! * 0.90,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Gender",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          CupertinoSlidingSegmentedControl(
            groupValue: _gender,
            children: const {
              0: Text("Male"),
              1: Text("Female"),
            },
            onValueChanged: (_value) {
              setState(() {
                _gender = _value!;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _calculateBMIButton() {
    return Container(
      height: _deviceHeight! * 0.07,
      child: CupertinoButton.filled(
        child: const Text("Calculate BMI"),
        onPressed: () {
          if (_height > 0 && _weight > 0 && _age > 0) {
            double _bmi = 703 * (_weight / pow(_height, 2));
            _showResultDialog(_bmi);
          }
        },
      ),
    );
  }

  void _showResultDialog(double _bmi) {
    String? _status;

    if (_bmi < 18.5) {
      _status = "Underweight";
    } else if (_bmi >= 18.5 && _bmi < 25) {
      _status = "Normal";
    } else if (_bmi >= 25 && _bmi < 30) {
      _status = "Overweight";
    } else if (_bmi >= 30) {
      _status = "Obese";
    }

    showCupertinoDialog(
      context: context,
      builder: (BuildContext _context) {
        return CupertinoAlertDialog(
          title: Text(_status!),
          content: Text(_bmi.toStringAsFixed(2)),
          actions: [
            CupertinoDialogAction(
              child: const Text("OK"),
              onPressed: () {
                _saveResult(_bmi!.toString(), _status!);
                Navigator.pop(_context);
              },
            ),
          ],
        );
      },
    );
  }

  void _saveResult(String _bmi, String _status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'dmi_date',
      DateTime.now().toString(),
    );
    await prefs.setStringList(
      'bmi_data',
      <String>[_bmi, _status],
    );
    print("BMI Result Saved");
  }
}
