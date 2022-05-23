// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:al_quran/app/data/models/detail_surah_model.dart';
import 'package:al_quran/app/data/models/surah_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:al_quran/main.dart';

void main() async {
  // Surah surah = Surah();
  // var response = await Dio().get('https://api.quran.sutanlab.id/surah');
  // surah = Surah.fromJson(json.decode(response.data) as Map<String, dynamic>);
  // print(surah.data);
  // print(surah.toJson());

  print('========================================');
  DetailSurah detailSurah = DetailSurah();
  var responsedetail = await Dio().get('https://api.quran.sutanlab.id/surah/1');
  // print(json.decode(responsedetail.data));
  detailSurah =
      DetailSurah.fromJson(responsedetail.data as Map<String, dynamic>);
  print(detailSurah.data);
  print(detailSurah.toJson());
}
