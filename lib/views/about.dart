import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/widgets/dart/buttons.dart';


class About extends StatelessWidget {


  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/lady1.jpg',),fit: BoxFit.contain),
                    color: Colors.white


                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kWhite,
                            child: IconButton(
                                onPressed: (){
                              // Navigator.pop(context);
                                  Navigator.pop(context);
                            }, icon: const Icon(Icons.arrow_back_ios,color: kBrown,)),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kWhite,
                            child: IconButton(
                                 onPressed: (){}, icon: const Icon(Icons.favorite,color: kBrown,)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                kSizedBoxH30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Miranda Olsen', style: largeText),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,color: Colors.yellow,),
                        kSizedBoxW5,
                        Text('4.2 (17)',style:  faintedText,),
                      ],
                    ),
                  ],
                ),
                // kSizedBoxH20,
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                              child: Card(

                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Image(image: AssetImage('images/bad.jpg'),fit: BoxFit.cover,height: 30,width: 25,),
                                      kSizedBoxW5,
                                      Text('Home Cleaning',style: faintedText16B)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                              child: Card(

                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Image(image: AssetImage('images/basket.jpg'),fit: BoxFit.cover,height: 30,width: 25,),
                                      kSizedBoxW5,
                                      Text('Laundry',style: faintedText16B)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                              child: Card(

                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: const ListTile(
                                  leading: Image(image: AssetImage('images/bad.jpg'),fit: BoxFit.cover,height: 30,width: 25,),
                                  trailing: Text(' Cleaning house',style: faintedText16B),
                                ),
                              ),
                            ),
                          ),






                        ],
                      ),

                    ],
                  ),
                ),
                kSizedBoxH5,
                const Text('About', style: semiLargeHeadings,),
                kSizedBoxH10,
                const Text('I work with individual approach, i give my Customers the Best.',style: faintedText16,),
                kSizedBoxH15,
                const Text('Work Area', style: semiLargeHeadings,),
                kSizedBoxH10,
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.infinity,

                  decoration:  const BoxDecoration(

                    image: DecorationImage(image: AssetImage('images/map.jpg',),fit: BoxFit.cover),
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(12),right: Radius.circular(12)),
                  ),

                ),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Price'),
                        const SizedBox(height: 5,),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 36),
                            children: <TextSpan>[
                              TextSpan(text: '\$20 ', style: semiLargeHeadings),
                              TextSpan(text: '/hour', style: darkLittleText)
                            ],
                          ),
                        )
                      ],
                    ),
                    smallButton (context),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
