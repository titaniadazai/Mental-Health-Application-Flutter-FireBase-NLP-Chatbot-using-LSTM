import 'package:flutter/material.dart';

class GeneralDiet extends StatefulWidget {
  const GeneralDiet({super.key});

  @override
  State<GeneralDiet> createState() => _GeneralDietState();
}

class _GeneralDietState extends State<GeneralDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet-General",
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
                child: Image.asset("assets/Healthy_Diet.jpg",fit: BoxFit.contain),
                ),

                Text("An eating plan that helps manage your weight includes a variety of healthy foods. Add an array of colors to your plate and think of it as eating the rainbow. Dark, leafy greens, oranges, and tomatoes—even fresh herbs—are loaded with vitamins, fiber, and minerals. Adding frozen peppers, broccoli, or onions to stews and omelets gives them a quick and convenient boost of color and nutrients.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify),
                SizedBox(height: 10,),

                Text("Sample Diet Chart for a Day",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),

                Text('Breakfast : (8:00-8:30AM)	- Aloo Paratha (2) + Raita (1 cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Mid-Meal : (11:00-11:30AM) -	Fruit Salad (1 cup) + Tender Coconut Water (1 glass)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Lunch : (2:00-2:30PM)	- 1 cup moong dal + 1 cup bhindi + 2 chapatti + salad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Evening : (4:00-4:30PM)	- Tea/ Coffee (1 cup) + Boiled Chana Chat (1 cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Dinner  : (8:00-8:30PM)	- Chapati (2) + Jeera Aloo (1 cup)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 10,),

            ]
            ),
          ),

        ),
      ),
    );
  }
}