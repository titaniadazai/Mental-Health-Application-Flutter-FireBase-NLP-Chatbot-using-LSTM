import 'package:flutter/material.dart' ;

class DiabetesDiet extends StatefulWidget {
  const DiabetesDiet({super.key});

  @override
  State<DiabetesDiet> createState() => _DiabetesDietState();
}

class _DiabetesDietState extends State<DiabetesDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet-Diabetes",
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
                child: Image.asset("assets/Diabetes_Diet.png",fit: BoxFit.contain),
                ),
                SizedBox(height: 5,),
                Text("It is recommended that a person with diabetes actively engage themselves in self-management, education, and treatment planning along with an individualized diet plan. With India being the diabetes capital of the world, it is high time that people with diabetes follow a diabetic diet chart since it significantly helps in maintaining blood glucose levels and alleviating symptoms of diabetes.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Sample Diet Chart for a Day",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Breakfast : (8:00-8:30AM)	- Broken wheat upma  1 Cup, Green Chutney  1 tablespoon',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Mid-Meal : (11:00-11:30AM) - Buttermilk  1 glass',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Lunch : (2:00-2:30PM)	- Egg Chapathi/ Panneer /chapathi (2) , Tomato onion sabzi 1 cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Evening : (4:00-4:30PM)	- Channa  1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Dinner  : (8:00-8:30PM)	- Horse gram dosa  2, Veg Sambar  ½ Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 10,),

            ]
            ),
          ),

        ),
      ),
    );
  }
}

