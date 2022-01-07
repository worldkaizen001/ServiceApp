import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/helpers/constants.dart';


Widget largeButton (BuildContext context){
  return   SizedBox(
    height: MediaQuery.of(context).size.height * 0.08,
    width: double.infinity,
    child:  Material(

      child: ElevatedButton(
        style:  ElevatedButton.styleFrom(
          elevation: 1,
          primary: kMain,
          animationDuration: const Duration(milliseconds: 500),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),

        onPressed: (){},
        child:  const Center(child: Text('Contact Now',style: faintedText18,)),
      ),
    ),
  );
}


Widget smallButton (BuildContext context){
  return  Material(child: SizedBox(
    height: MediaQuery.of(context).size.height * 0.079,
    width: MediaQuery.of(context).size.width * 0.45,
    child: Card(
      color:kMain,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: const Center(child: Text('Hire Now',style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.w600),)),
    ),
  ));
}