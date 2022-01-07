import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaizen_services/Models/services.dart';
import 'package:kaizen_services/helpers/constants.dart';
import 'package:kaizen_services/views/about.dart';
import 'package:kaizen_services/views/description.dart';
import 'package:kaizen_services/widgets/dart/searchfield.dart';
import 'package:kaizen_services/widgets/single_card.dart';
import 'package:kaizen_services/widgets/smallcard.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Good Morning!', style: largeText),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: kWhite,
                      child: IconButton(
                          onPressed: () {

                          },
                          icon: const Icon(
                            Icons.notifications_none_sharp,
                            color: kBrown,
                          )),
                    ),
                  ],
                ),
                kSizedBoxH10,
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: kBrown,
                    ),
                    kSizedBoxW5,
                    Text(
                      'London',
                      style: faintedText,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: kMain,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          kSizedBoxH5,
                          const Text(
                            '20% OFF',
                            style: largeTextWhite,
                          ),
                          kSizedBoxH10,
                          AnimatedTextKit(
                            animatedTexts: [
                              WavyAnimatedText('For the first Order...',
                                  textStyle: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  speed: const Duration(milliseconds: 300)),
                            ],
                          ),
                          kSizedBoxH25,
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.height * 0.16,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          transitionDuration:
                                              const Duration(seconds: 2),
                                          transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                            return FadeTransition(
                                              opacity: animation,
                                              child: child,
                                            );
                                          },
                                          pageBuilder: (context, animation,
                                              secondaryAnimation) {
                                            return const Description();
                                          }));
                                },
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Hire Now',
                                      style: TextStyle(
                                          color: kMain,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kSizedBoxH20,
                searchField(),
                kSizedBoxH20,
                const Text(
                  'Categories',
                  style: semiLargeHeadings,
                ),
                kSizedBoxH25,
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 2),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              final curve = CurvedAnimation(
                                  parent: animation, curve: Curves.bounceInOut);
                              return ScaleTransition(
                                scale: curve,
                                child: child,
                              );
                            },
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return const Description();
                            }));
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: GridView.count(
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: List.generate(
                        doctorService.length,
                        (index) => singleCard(
                          context,
                          doctorService[index].text,
                          doctorService[index].imgUrl,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
