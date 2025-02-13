import 'package:flutter/material.dart';
import 'package:flutter_work/widget/addWaterButton.dart';

class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {
  int _currentintake = 0;
  final int _goal = 2000;

  void _waterAdd(int amount) {
    setState(() {
      if (_currentintake < _goal) {
        _currentintake = (_currentintake + amount).clamp(0, _goal);
      }
    });
  }

  void resetWater() {
    setState(() {
      _currentintake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    double progress = (_currentintake / _goal).clamp(0.0, 1.0);

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Water Tracker",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    "Today's In Take",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${_currentintake}ml",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade500,
                    color: Colors.blueAccent,
                    strokeWidth: 10,
                  ),
                ),
                Text(
                  "${(progress *100).toInt()}ml",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              spacing: 15,
              children: [
                addWaterButton(amount: 200,icon: Icons.local_drink, onlick: () =>_waterAdd(200),),
                addWaterButton(amount: 500,onlick: ()=>_waterAdd(500),),
                addWaterButton(amount: 1000,icon: Icons.local_cafe,onlick: ()=>_waterAdd(1000),)
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent.shade400
                      ),
                        onPressed: () =>resetWater(),
                        child: Text(
                          "Reset",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ))))
          ],
        ),
      ),
    );
  }
}
