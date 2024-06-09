import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 350,),
              Center(child: Image.asset('assets/01.png')),


            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 300,
              width: 350,
              child: Image.asset('assets/bottom.png', fit: BoxFit.cover,),
            )
          ),
        ],
      ),
    );
  }
}
