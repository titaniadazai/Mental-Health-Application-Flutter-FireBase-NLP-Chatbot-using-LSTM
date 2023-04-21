import 'package:flutter/material.dart';

class PcodDiet extends StatefulWidget {
  const PcodDiet({super.key});

  @override
  State<PcodDiet> createState() => _PcodDietState();
}

class _PcodDietState extends State<PcodDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Diet-PCOS/PCOD",
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
                child: Image.asset("assets/Pcod_Diet.png",fit: BoxFit.contain),
                ),
                SizedBox(height: 5,),
                Text("PCOS makes it difficult for the body to utilise insulin responsible for the conversion of carbohydrates into energy. It creates resistance causing insulin and sugar to build up in the bloodstream. High insulin levels prevent lipolysis (or breaking down of fat), making weight loss difficult. Following a PCOS-specific diet to regulate insulin production stimulates lipolysis, helping in weight loss and weight management.Traditional Indian meals are functional, offering additional nutritional value beyond the essential vitamins and minerals. They prevent the risk of disease by supporting the immune system, aid weight loss, and regulate blood sugar levels.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Sample Diet Chart for a Day",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Breakfast : (8:00-8:30AM)	- Poha with veggies , Fresh Orange juice 1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Mid-Meal : (11:00-11:30AM) - 1 Whole Fruit of Apple',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Lunch : (2:00-2:30PM)	- Brown Rice with Rasam and Cabbage stir fry 1 cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Evening : (4:00-4:30PM)	- Roasted Makhana or Foxnuts  1 Cup',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 3,),
                Text('Dinner  : (8:00-8:30PM)	- Chapathi  2 with Vegetable Kurma 1 Cup and Salad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                SizedBox(height: 10,),

            ]
            ),
          ),

        ),
      ),
    );
  }
}