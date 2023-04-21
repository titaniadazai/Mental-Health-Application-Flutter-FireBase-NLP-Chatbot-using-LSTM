import 'package:flutter/material.dart';

class AnxietyDiet extends StatefulWidget {
  const AnxietyDiet({super.key});

  @override
  State<AnxietyDiet> createState() => _AnxietyDietState();
}

class _AnxietyDietState extends State<AnxietyDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet-Anxiety",
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
                child: Image.asset("assets/Anxiety_Diet.png",fit: BoxFit.contain),
                ),
                SizedBox(height: 5,),
                Text("In some cases the episode of anxiety can take a toll over physical as well as mental health. If you feel anxious too often, then it’s time to stop and rethink and tweak your lifestyle. Yes, it might sound strange, but our lifestyle is one of the major reasons that cause anxiety. And the best way to embark on that change is by tweaking your diet and by adding foods that help in relaxing the nerves. So, here’s a list of foods that help in easing your anxiety and calm your anxious brain instantly.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Sample Diet Chart for a Day",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Breakfast : (8:00-8:30AM)	- Multigrain Bread Vegetable Sandwich , Milk 1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Mid-Meal : (11:00-11:30AM) - Papaya 1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Lunch : (2:00-2:30PM)	- Chapathi(2) with Lauki Kofta 1 cup and Cucumber Raitha 1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Evening : (4:00-4:30PM)	- Tea 1 Cup with Roasted Seeds 1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Dinner  : (8:00-8:30PM)	- Matar Pulao with Palak Paneer ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 10,),

            ]
            ),
          ),

        ),
      ),
    );
  }
}