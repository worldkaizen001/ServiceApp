import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/views/about.dart';
import 'package:kaizen_services/widgets/dart/buttons.dart';


class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  kHorizontalPadding20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: kWhite,
                      child: IconButton(
                          onPressed: (){
                        Navigator.pop(context,
                           );
                      }, icon: const Icon(Icons.arrow_back_ios,color: kBrown,)),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: kWhite,
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.menu_outlined,color: kBrown,)),
                    ),
                  ],
                ),
                kSizedBoxH30,
                Row(
                  children:  [
                   Container(
                     height: 80,
                     width: 80,

                     decoration: BoxDecoration(


                         image: const DecorationImage(image: AssetImage('images/lady1.jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),

                    ),
                    kSizedBoxW15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Glorious Shine', style: semiLargeHeadings,),
                        kSizedBoxH5,
                        const Text('Cleaning Services',style: semiLargeHeadings20,),
                        kSizedBoxH5,
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Icon(Icons.star,size: 14,color: Colors.yellow,),
                            Icon(Icons.star,size: 14,color: Colors.yellow,),
                            Icon(Icons.star,size: 14,color: Colors.yellow,),
                            Icon(Icons.star,size: 14,color: Colors.yellow,),
                            Icon(Icons.star,size: 14,color: Colors.black,),
                            kSizedBoxW5,
                             Text('4.6',style: TextStyle(color: kBrown),),


                          ],
                        ),


                      ],
                    ),


                  ],
                ),
               const SizedBox(height: 40,),
                const Text('Description', style: semiLargeHeadings,),
                kSizedBoxH15,
                const Text('The company provides proven cleaners, for your apartment and large areas. we select the most reliable candidates and think about your safety.',style: faintedText16,),
                kSizedBoxH10,
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                      Row(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      kSizedBoxW5,
                                      Text('High Rating',style: faintedText16B,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              child: InkWell(
                                splashColor: Colors.yellow,
                                highlightColor: Colors.blue.withOpacity(0.5),
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.verified_rounded,color: Colors.green,),
                                        kSizedBoxW5,
                                        Text('Verified',style: faintedText16B,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              child: InkWell(
                                splashColor: Colors.yellow,
                                highlightColor: Colors.blue.withOpacity(0.5),
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.attach_money,color: Colors.green,),
                                        kSizedBoxW5,
                                        Text(' payment',style: faintedText16B,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),





                        ],
                      ),

                    ],
                  ),
                ),
                kSizedBoxH15,
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        PageRouteBuilder(

                            transitionDuration: const Duration(milliseconds: 1000),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              final slideAnimation = Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);

                              return SlideTransition(position:slideAnimation,child: child, );
                            },

                            pageBuilder: (context, animation, secondaryAnimation ){
                              return const About();
                            }));

                  },

                    child: const Text('Cleaners', style: semiLargeHeadings,)),


                SizedBox(
                  height: MediaQuery.of(context).size.height *0.33,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [


                      GestureDetector(
                        onTap:(){
                          Navigator.push(context,
                              PageRouteBuilder(

                                  transitionDuration: const Duration(milliseconds: 1000),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child){
                                    final slideAnimation = Tween(begin: const Offset(2,2),end: const Offset(0,0)).animate(animation);

                                    return SlideTransition(position:slideAnimation,child: child, );
                                  },

                                  pageBuilder: (context, animation, secondaryAnimation ){
                                    return const About();
                                  }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            GestureDetector(
                              onTap:(){
                                Navigator.push(context,
                                    PageRouteBuilder(

                                        transitionDuration: const Duration(milliseconds: 1000),
                                        transitionsBuilder: (context, animation, secondaryAnimation, child){
                                          final slideAnimation = Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);

                                          return SlideTransition(position:slideAnimation,child: child, );
                                        },

                                        pageBuilder: (context, animation, secondaryAnimation ){
                                          return const About();
                                        }));

                              },
                                child: cleanersRow (context, "lady1", "Helen Lee", 'Dublin', 4.8)),
                            kSizedBoxW15,

                            cleanersRow (context, "lady2", "Miranda Olsen", 'Dublin', 4.8),
                            kSizedBoxW15,
                            cleanersRow (context, "man", "Ben Tween", 'Bentley', 4.8),
                            kSizedBoxW15,
                            cleanersRow (context, "lady1", "Miranda Olsen", 'London', 4.8),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



                largeButton (context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
