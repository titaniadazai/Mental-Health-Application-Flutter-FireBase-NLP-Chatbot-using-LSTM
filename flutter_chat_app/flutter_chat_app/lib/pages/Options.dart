import 'package:flutter/material.dart';
import 'package:flutter_chat_app/pages/Grid1.dart';
import 'package:flutter_chat_app/pages/Grid2.dart';
import 'package:flutter_chat_app/pages/main_home_page.dart';
import 'package:flutter_chat_app/widgets/widgets.dart';
import 'size_config.dart';


class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 218, 190, 238),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Suggestions",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),


    
      body: SingleChildScrollView(
        child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      nextScreen(context, MyGridScreen());
                    },
                    child: Ink.image(image: AssetImage("assets/Diet.jpg"),
                    height: 300,
                    width: 300,
                    child: Center(child: Text("Diet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      nextScreen(context, ExerciseGrid());
                    },
                    child: Ink.image(image: AssetImage("assets/Exercise.jpg"),
                    
                    height: 300,
                    width: 300,
                    child: Center(child: Text("Exerecise",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
                    ),
                  )
          
                ],
              ),
        ),
      ),

      

    );
  }
}





  