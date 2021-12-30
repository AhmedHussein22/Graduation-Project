import 'package:flutter/material.dart';
import 'translation_helper.dart';

String translator(BuildContext context, String key){
  return AppLocal.of(context).getTranslation(key)??"";
}
 

  