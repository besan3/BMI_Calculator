import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massenger_app/colors.dart';

import 'onbording.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double _currentSliderValue = 20;
  int age=22;
  double weight=0.0;

bool ismale=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFfE7E2),
        title: Text('BMI Calculator',style: TextStyle(
            fontSize: 24,fontWeight: FontWeight.bold,color: buttonColor
        ),) ,
      ),
      backgroundColor: const  Color(0xffFfe7E2),
     body: SafeArea(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         //mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text('Select Gender',style: TextStyle(
                 fontSize: 24,color: buttonColor,
             ),),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(
               children: [
                 Expanded(
                   child: GestureDetector(onTap: (){
                     setState(() {
                       ismale=true;
                     });
                   },
                     child: Container(
                       padding: const EdgeInsets.all(20.0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: ismale?arrowColor:Colors.white,
                       ),
                       child: Column(
                         children: [
                           Image.asset('assets/images/male-gender.png',
                           width: 80,
                             height: 80,
                           ),
                           SizedBox(height: 10,),
                           Text('Male',style: TextStyle(
                               fontSize: 24,color: buttonColor,fontWeight: FontWeight.bold
                           ),),
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         ismale=false;
                       });
                     },
                     child: Container(
                       padding: const EdgeInsets.all(20.0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: !ismale?arrowColor:Colors.white,
                       ),
                       child: Column(
                         children: [
                           Image.asset('assets/images/woman.png',
                             width: 80,
                             height: 80,
                           ),
                           SizedBox(height: 10,),
                           Text('Female',style: TextStyle(
                               fontSize: 24,
                               color: buttonColor,
                               fontWeight: FontWeight.bold
                           ),),
                         ],
                       ),
                     ),
                   ),
                 )

               ],
             ),
           ),

           Padding(
             padding: const EdgeInsets.all( 20.0),
             child: Container(
               padding:const EdgeInsets.all(20.0),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white,
               ),
               child: Column(

                 children: [
                   Padding(
                     padding:  const EdgeInsets.symmetric(horizontal: 20),
                     child: Text('Height',style: TextStyle(
                         fontSize: 24,color: buttonColor , fontWeight: FontWeight.bold
                     ),),
                   ),    const SizedBox(height: 10,),
                   Text('${_currentSliderValue.round()}',style: TextStyle(
                       fontSize: 20,
                       color: buttonColor,

                   ),),const SizedBox(height: 10,),
                   Slider(value: _currentSliderValue, onChanged: (double value){
    setState(() {
   _currentSliderValue = value;
    });

                   },divisions: 200,
                     label: _currentSliderValue.round().toString(),
                   activeColor: arrowColor,
                   max: 200,
                   min: 20,
                   )
                 ],
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(
               children: [
                 Expanded(
                   child: Container(
                     padding: const EdgeInsets.all(20.0),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white,
                     ),
                     child: Column(
                       children: [
                         Text('Age',style: TextStyle(
                             fontSize: 24,color: buttonColor,fontWeight: FontWeight.bold
                         ),),
                         const SizedBox(height: 10,),
                         Text('$age',style: TextStyle(
                             fontSize: 24,color: buttonColor,
                         ),),
                         const SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   age++;
                                 });
                               },
                               child: Icon(Icons.add),
                               mini: true,
                               backgroundColor: arrowColor,
                             ),
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },
                               child: const Icon(Icons.remove),
                               mini: true,
                               backgroundColor: arrowColor,
                             ),

                           ],
                         )

                       ],
                     ),
                   ),
                 ),
                 const SizedBox(width: 10,),
                 Expanded(
                   child: Container(
                     padding: const EdgeInsets.all(20.0),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white,
                     ),
                     child: Column(
                       children: [
                         Text('Weight',style: TextStyle(
                             fontSize: 24,color: buttonColor,fontWeight: FontWeight.bold
                         ),),
                         const SizedBox(height: 10,),
                         Text('$weight',style: TextStyle(
                             fontSize: 24,color: buttonColor,
                         ),),
                         const SizedBox(height: 10,),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight++;
                                 });
                               },
                               child: Icon(Icons.add),
                               mini: true,
                               backgroundColor: arrowColor,
                             ),
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight--;
                                 });
                               },
                               child: const Icon(Icons.remove),
                               mini: true,
                               backgroundColor: arrowColor,
                             ),


                           ],
                         )
                       ],
                     ),
                   ),
                 )

               ],
             ),
           ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
  child:   MaterialButton(onPressed: (){
    double result2=weight/(pow(_currentSliderValue/100, 2));
    Navigator.push(context,  MaterialPageRoute(builder: (context)=>Result(result:result2.round()) ));
  },
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15)
),
  color: arrowColor,

    minWidth: double.infinity,

    child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('See Result',style: TextStyle(

        fontSize: 28,color: buttonColor,

      ),),
    ),





  ),
)
         ],
       ),
     ),
    );
  }
}
