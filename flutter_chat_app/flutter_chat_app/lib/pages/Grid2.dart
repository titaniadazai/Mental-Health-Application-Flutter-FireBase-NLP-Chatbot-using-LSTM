import 'package:flutter/material.dart';
import 'package:flutter_chat_app/pages/Anxiety_Exercise.dart';
import 'package:flutter_chat_app/pages/Depression_Exercise.dart';
import 'package:flutter_chat_app/pages/Diabetic_Excercise.dart';
import 'package:flutter_chat_app/pages/General_Exercise.dart';
import 'package:flutter_chat_app/pages/Hypertension_Exercise.dart';
import 'package:flutter_chat_app/pages/Pcod_Exercise.dart';
import 'package:flutter_chat_app/widgets/widgets.dart';

class ExerciseGrid extends StatefulWidget {
  const ExerciseGrid({super.key});

  @override
  State<ExerciseGrid> createState() => _ExerciseGridState();
}

class _ExerciseGridState extends State<ExerciseGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Exercise",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),  
      body: Center(  
          child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(16),  
            crossAxisSpacing: 10,  
            mainAxisSpacing: 10,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[  
              GestureDetector(
                onTap: (){
                  nextScreen(context, GeneralExercise());
                },
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  alignment: Alignment.center,
                  child: const Text('General', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),  
                  color: Color.fromARGB(255, 233, 30, 99),  
                ),
              ),  
              GestureDetector(
                onTap: (){
                  nextScreen(context, DiebeticExercise());
                },
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  alignment: Alignment.center,
                  child: const Text('Diabetic', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),  
                  color:Color.fromARGB(255, 233, 30, 99),  
                ),
              ),  
              GestureDetector(
                onTap: (){
                  nextScreen(context, PcodExercise());
                },
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  alignment: Alignment.center,
                  child: const Text('PCOS/PCOS', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),  
                  color: Colors.purple,  
                ),
              ),  
              GestureDetector(
                onTap: (){
                  nextScreen(context, AnxietyExercise());
                },
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  alignment: Alignment.center,
                  child: const Text('Anxiety', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center), 
                  color: Colors.purple, 
                ),
              ),  
              GestureDetector(
                onTap: (){
                  nextScreen(context, DepressionExercise());
                },
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  alignment: Alignment.center,
                  child: const Text('Depression', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),  
                  color: Colors.orange,  
                ),
              ),  
              GestureDetector(
                onTap: (){
                  nextScreen(context, HypertensionExercise());
                },
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  alignment: Alignment.center,
                  child: const Text('Hypertension', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),  
                  color: Colors.orange,  
                ),
              ),  
            ],  
          )), 
    );
  }
}