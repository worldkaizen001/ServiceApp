import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key? key, String? text,}) : super(key: key);

  @override
  Widget build(BuildContext context,  ) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Card(
          elevation: 2,
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(

            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 13),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  Icon(Icons.ten_k,size: 38,),
                  kSizedBoxH5,
                  Text( 'Cleaning',style: darkLittleText,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
