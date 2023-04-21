import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_chat_app/pages/DoctorArun.dart';
import 'package:flutter_chat_app/pages/DoctorHafeez.dart';
import 'package:flutter_chat_app/pages/DoctorJayshree.dart';
import 'package:flutter_chat_app/pages/Doctors_Info.dart';
import 'package:flutter_chat_app/widgets/widgets.dart';

class DoctorDropDown extends StatefulWidget {
  const DoctorDropDown({super.key});

  @override
  State<DoctorDropDown> createState() => _DoctorDropDownState();
}

class _DoctorDropDownState extends State<DoctorDropDown> {

  String? selectedValue;
List<String> items = [
  'Dr. Stefeni Albert',
  'Dr. Arun R',
  'Dr. Jayshree Krishnan',
  'Dr. Hafeez M',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Doctor's Information",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),
      body: Center(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          SizedBox(height: 15,),
          Text("Amity has been associated with Doctors of great excelence and experience in all Speciality.To Know about them read more from their profile.",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300), textAlign: TextAlign.justify,),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              hint: Text(
                'Select Doctor Name',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
              ),
              items: items
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
                if(selectedValue == "Dr. Stefeni Albert")
                {nextScreen(context, DoctorsInfo());}
                else{
                  if(selectedValue == "Dr. Arun R"){
                    nextScreen(context, DrArunR());}
                    else{
                      if(selectedValue == "Dr. Jayshree Krishnan"){
                        nextScreen(context, DrJayshree());
                      }
                      else{
                        if(selectedValue == "Dr. Hafeez M"){
                          nextScreen(context, DrHafeez());
                        }
                        else{
                           nextScreen(context, DoctorDropDown());
                        }
                      }
                    }
                }
              },
            ),
          ),
        ],
      ),
    ),
    );
  }
}


