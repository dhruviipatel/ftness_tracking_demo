import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Activities'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            innerWidget(
                title: 'Steps Taken', value: '1000', color: Colors.yellow),
            innerWidget(
                title: 'Calories Burn', value: '100', color: Colors.blue),
            innerWidget(
                title: 'Distance Travelled', value: '25 km', color: Colors.red),
            innerWidget(
                title: 'Workout Logging time',
                value: '2 h',
                color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

Widget innerWidget({required title, required value, required color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Text(value)
        ],
      ),
    ),
  );
}
