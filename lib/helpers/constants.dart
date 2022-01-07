import 'package:flutter/material.dart';
import 'package:kaizen_services/views/about.dart';

const kWhite = Color(0xfff7f8f8);
const kLiteTeal = Color(0xff65d8d4);
const kSemiDarkTeal = Color(0xff5CBBB1);
const kSemi = Color(0xffAedfe2);
const kBrown = Color(0xffAFA8a6);
const kDarkTeal = Color(0xff088984);
const kDarkBrown = Color(0xff727764);
const kBlack = Color(0xff2E3439);
const kMain = Color(0xff28C0BD);

///Padding Constants
const kHorizontalPadding20 = EdgeInsets.symmetric(horizontal: 20,vertical: 20);
const kVerticalPadding30 = EdgeInsets.symmetric(vertical: 30,horizontal: 30);

///SizedBox Constants
///
const kSizedBoxH30 = SizedBox(height: 25,);
const kSizedBoxH25 = SizedBox(height: 25,);
const kSizedBoxH20 = SizedBox(height: 20,);
const kSizedBoxH15 = SizedBox(height: 15,);
const kSizedBoxH10 = SizedBox(height: 10,);
const kSizedBoxH5 = SizedBox(height: 5,);
const kSizedBoxW15 = SizedBox(width: 15,);
const kSizedBoxW10 = SizedBox(width: 10,);
const kSizedBoxW5 = SizedBox(width: 5,);

///TextStyle Constants

const largeText = TextStyle(fontSize: 25, color: kBlack,fontWeight: FontWeight.bold);
const largeTextWhite = TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold);
const faintedText = TextStyle(fontSize: 17, color: kBrown,fontWeight: FontWeight.w700);
const faintedText16 = TextStyle(fontSize: 16, color: kBrown,fontWeight: FontWeight.w500,wordSpacing: 1,letterSpacing: 0.4,height: 1.3);
const faintedText18 = TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w700);
const faintedText2 = TextStyle(fontSize: 17, color: Colors.white70,fontWeight: FontWeight.w600);
const faintedText16B = TextStyle(fontSize: 16, color: Colors.black54,fontWeight: FontWeight.w700,wordSpacing: 1,letterSpacing: 0.4,height: 1.3);

const semiLargeHeadings = TextStyle(fontSize: 23, color: kBlack,fontWeight: FontWeight.w600,fontFamily: 'SourceSansPro',);
const semiLargeHeadings20 = TextStyle(fontSize: 17, color: kBrown,fontWeight: FontWeight.w800);
const darkLittleText = TextStyle(fontSize: 14, color: kBlack,fontWeight: FontWeight.w700);
const darkLittleText18 = TextStyle(fontSize: 18, color: kBlack,fontWeight: FontWeight.w900);



Widget cardStyle (context, String? text, images ){
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.12,
    width: MediaQuery.of(context).size.width * 0.28,
    child: Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 13),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:   [
              Container(
                height: 40,
                width: 40,

                decoration: BoxDecoration(
                    image: DecorationImage(image:  AssetImage('$images',),fit: BoxFit.cover)
                ),
              ),
              kSizedBoxH5,
              Text( '$text',style: darkLittleText,),
            ],
          ),
        ),
      ),
    ),
  );
}


Widget cleanersRow (context, images, name, location, rating){
  return Material(
    elevation: 2,
    child: InkWell(

      focusColor: const Color(0xff28C0BD),
      splashColor: Colors.black,
      highlightColor: const Color(0xff28C0BD),
      onTap: (){
        Navigator.push(context, PageRouteBuilder(
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (context, animation, secondaryAnimation, child){
              final slide = Tween(begin: const Offset(0,1),end: const Offset(0,0)).animate(animation);
              return SlideTransition(position: slide,child: child,);
            },

            pageBuilder: (context, animation, secondaryAnimation,){
              return const About();}));
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
            color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        height: MediaQuery.of(context).size.height * 0.26,
        width: 170,

        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration:  BoxDecoration(
                image: DecorationImage(image: AssetImage( 'images/$images.jpg',
                ),fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('$name',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                const SizedBox(height: 5,),
                Row(
                  children:  [
                    const Icon(Icons.location_on,color: kBrown,size: 17,),
                    Text('$location',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: kBrown),),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children:  [
                    const Text('\$27/hour',style: darkLittleText,),
                    Row(
                      children:  [
                        const Icon(Icons.star,color: Colors.yellow,size: 17,),
                        kSizedBoxW5,
                        Text('$rating',style:  faintedText,),
                      ],
                    ),

                  ],
                )
              ],
            )

          ],
        ),
      ),
    ),
  );
}