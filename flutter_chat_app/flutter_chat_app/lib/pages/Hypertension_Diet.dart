import 'package:flutter/material.dart';

class HypertensionDiet extends StatefulWidget {
  const HypertensionDiet({super.key});

  @override
  State<HypertensionDiet> createState() => _HypertensionDietState();
}

class _HypertensionDietState extends State<HypertensionDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet-Hypertension",
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
                child: Image.asset("assets/Hypertention_Diet.jpg",fit: BoxFit.contain),
                ),
                SizedBox(height: 5,),
                Text("High blood pressure patients, in this healthier diet chart we include food items with less salt, also exercising regularly, and take prescribed medication that we be helpful to lower down blood pressure. By starting a few new food habits, including counting calories and watching portion sizes, you may be able to lower your blood pressure and reduce the medications you need to control high blood pressure.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Sample Diet Chart for a Day",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Breakfast : (8:00-8:30AM)	- Aloo Paratha(2) with Groundnut Chutney',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Mid-Meal : (11:00-11:30AM) - 100gm pomegranate (1 Cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Lunch : (2:00-2:30PM)	- Rice(1 Cup) , Chapathi(2) with Rajma Curry(1 Cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Evening : (4:00-4:30PM)	- 3 Cracker biscuits + 1 cup tea/milk(toned)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Dinner  : (8:00-8:30PM)	- 3 chapathi(multigrain-wheat;jowar;bajra) + lauki sabji + 1/2 cup vegetable salad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 10,),

            ]
            ),
          ),

        ),
      ),
    );
  }
}