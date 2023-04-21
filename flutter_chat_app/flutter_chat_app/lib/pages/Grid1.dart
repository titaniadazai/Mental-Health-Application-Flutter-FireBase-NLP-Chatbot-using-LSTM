import 'package:flutter/material.dart';
import 'package:flutter_chat_app/pages/Anxiety_Diet.dart';
import 'package:flutter_chat_app/pages/Deression_Diet.dart';
import 'package:flutter_chat_app/pages/General_Diet.dart';
import 'package:flutter_chat_app/pages/Hypertension_Diet.dart';
import 'package:flutter_chat_app/pages/Pcod_Diet.dart';
import 'package:flutter_chat_app/pages/diabetes_diet.dart';
import 'package:flutter_chat_app/widgets/widgets.dart';

class MyGridScreen extends StatefulWidget {  
  MyGridScreen({Key? key}) : super(key: key);  
  
  @override  
  _MyGridScreenState createState() => _MyGridScreenState();  
}  
  
class _MyGridScreenState extends State<MyGridScreen> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet",
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
                  nextScreen(context, GeneralDiet());
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
                  nextScreen(context, DiabetesDiet());
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
                  nextScreen(context, PcodDiet());
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
                  nextScreen(context, AnxietyDiet());
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
                  nextScreen(context, DepressionDiet());
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
                  nextScreen(context, HypertensionDiet());
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