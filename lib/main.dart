import 'package:flutter/material.dart';
import 'package:google_agenda/screens/home/home.dart';
import 'package:google_agenda/style.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Google Agenda",
      home: Home(),
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: redTheme,
        ),
        dividerTheme: DividerThemeData(
          color: grayDivider,
          thickness: 1,
        ),
        iconTheme: IconThemeData(
          color: blueTheme,
          size: 30,
        ),
        primarySwatch: blueTheme,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
