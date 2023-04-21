import 'package:flutter/material.dart';

class DepressionDiet extends StatefulWidget {
  const DepressionDiet({super.key});

  @override
  State<DepressionDiet> createState() => _DepressionDietState();
}

class _DepressionDietState extends State<DepressionDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet-Depresssion",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                SizedBox(height: 500,
                child: Image.asset("assets/Depression_Diet.jpeg",fit: BoxFit.contain),
                ),
                SizedBox(height: 5,),
                Text("According to WHO, more than 300 million people worldwide suffer from this problem, in India this figure is more than 50 million, which is a very serious problem. Depression usually begins in adolescence or 30 to 40 years of age, but it can occur at any age. Women are more likely to suffer from depression than men. Apart from mental factors, hormonal imbalance, pregnancy and genetic defects can also be the cause of depression.To avoid depression, we are going to tell you about some such food items that can help you get out of the circle of depression and anxiety.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Sample Diet Chart for a Day",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Breakfast : (8:00-8:30AM)	- Idly(2) with Sambhar , Coconut Water 1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Mid-Meal : (11:00-11:30AM) - 1 Bowl of Banana',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Lunch : (2:00-2:30PM)	- Brown Rice with DalI(1 Cup) and Vegetable Salad (1 Cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Evening : (4:00-4:30PM)	- Herbal Tea',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Dinner  : (8:00-8:30PM)	- Chapathi(2) with Vegetable Curry(1 Cup) and Curd (1 Cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 10,),

            ]
            ),
          ),

        ),
      ),
    );
  }
}