import 'package:flutter/material.dart';

class Result extends StatelessWidget {

 int? result;

 Result({
   required this.result
});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SafeArea(

          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Result: $result')
            ],
          ),
        ),
      ),

    );
  }
}
