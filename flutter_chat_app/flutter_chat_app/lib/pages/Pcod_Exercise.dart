import 'package:flutter/material.dart';

class PcodExercise extends StatefulWidget {
  const PcodExercise({super.key});

  @override
  State<PcodExercise> createState() => _PcodExerciseState();
}

class _PcodExerciseState extends State<PcodExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Exercise-PCOD/PCOS",
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
              Text("Exercise Plan for PCOD/PCOS",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                SizedBox(height: 5,),
                Text("Women with PCOS experience higher rates of insulin resistance compared to women who don’t have the condition. Insulin resistance affects your body’s ability to use blood sugar for energy.Doctors have connected a lack of physical activity and excess body weight as potential contributing factors to insulin resistance, according to the National Institute of Diabetes and Digestive and Kidney DiseasesTrusted Source.Not all women with PCOS have overweight. The good news is physical exercise is something you can do for your health when you have PCOS, regardless of your weightTrusted Source.",
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