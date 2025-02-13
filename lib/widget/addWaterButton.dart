import 'package:flutter/material.dart';

class addWaterButton extends StatelessWidget {

  final int amount;
  IconData ? icon;
  final VoidCallback onlick;

  addWaterButton({
    super.key,required this.amount,this.icon,required this.onlick
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(padding: const EdgeInsets.all(8.0),

            child: ElevatedButton.icon(
                onPressed: onlick,
                label: Text(
                  "${amount} ml",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                icon: Icon(
                  icon ?? Icons.water_drop,
                  color: Colors.white,
                ))));
  }
}