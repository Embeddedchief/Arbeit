import 'package:flutter/material.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                color: Color(0xff0056D2),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              Text(
                'Applications',
                style: TextStyle(fontWeight: FontWeight(700), fontSize: 17 ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(),
          SizedBox(),
          Row(children: []),
          Column(children: []),
        ],
      ),
    );
  }
}
