import 'package:flutter/material.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 83),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    color: Color(0xff0056D2),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. Vestibulum lectus consequat massa enim consequat eget nunc etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15),
              Text(
                "Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. Vestibulum lectus consequat massa enim consequat eget nunc etiam. ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15),
              Text(
                " Fermentum placerat sed quisque sit. Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. Vestibulum lectus consequat massa enim consequat eget nunc etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15),
              Text(
                " Vestibulum lectus consequat massa enim consequat eget nunc etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
