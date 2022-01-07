import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';



Widget searchField (){
  return SizedBox(
    width: double.infinity,
    child: TextFormField(
      decoration:  InputDecoration(
        fillColor: kWhite,
        filled: true,
        enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kBrown),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kBrown),
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: kBrown, fontSize: 20, fontWeight: FontWeight.w600),
        prefixIcon:  const Icon(Icons.search,color: kBrown ,size: 25,),

      ),
    ),
  );
}