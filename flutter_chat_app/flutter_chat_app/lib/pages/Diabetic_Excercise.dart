import 'package:flutter/material.dart';

class DiebeticExercise extends StatefulWidget {
  const DiebeticExercise({super.key});

  @override
  State<DiebeticExercise> createState() => _DiebeticExerciseState();
}

class _DiebeticExerciseState extends State<DiebeticExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Exercise-Diabetic",
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
              Text("Exercise Plan for Diabetic People",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                SizedBox(height: 5,),
                Text("If you’re not into regular exercise, putting together an exercise plan can be a bummer.But remember, along with your diet and medications, regular physical activity is an important part of managing diabetes or dealing with prediabetes. Because when you’re active, your cells become more sensitive to insulin so it works more effectively to lower your blood glucose, also known as blood sugar.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Monday	Aerobic exercise: 10-30 minutes. Some example activities include stationary bike, a walking workout, swimming, or elliptical workout."),
                SizedBox(height: 5,),
                Text("Tuesday	Resistance training: total body strength and core training."),
                SizedBox(height: 5,),
                Text("Wednesday	Rest day, or gentle stretching, flexibility training, or walking."),
                SizedBox(height: 5,),
                Text("Thursday	Aerobic exercise: 10-30 minutes. You can do the same exercise you did on Monday, or a new one!"),
                SizedBox(height: 5,),
                Text("Friday	Resistance training: total body strength and core training. Try to repeat the same exercises you did on Tuesday so you can practice the exercises, and build strength and endurance to do more."),
                SizedBox(height: 5,),
                Text("Saturday	Aerobic exercise: try something less structured and more leisurely for 10-30 minutes, like a walk or bike ride."),
                SizedBox(height: 5,),
                Text("Sunday	Rest day; address any exercises challenges or accomplishments from the week."),
            ]
            ),
          ),

        ),
      ),
    );
  }
}