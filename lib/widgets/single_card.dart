import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';

Widget singleCard(context, String? text, images) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.12,
    width: MediaQuery.of(context).size.width * 0.28,
    child: Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          '$images',
                        ),
                        fit: BoxFit.cover)),
              ),
              kSizedBoxH5,
              Text(
                '$text',
                style: darkLittleText,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
