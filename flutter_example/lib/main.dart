import 'package:flutter/material.dart';
import 'package:flutter_example/api_calls.dart';
import 'package:flutter_example/counter_provider.dart';
import 'package:flutter_example/cupertino_app.dart';
import 'package:flutter_example/gridview_example.dart';
import 'package:flutter_example/listview_example.dart';
import 'package:flutter_example/platform_dialog.dart';
import 'package:flutter_example/scaffold_app.dart';
import 'package:flutter_example/screen_1.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'GetxHome.dart';
import 'container_example.dart';

void main() {
  //Example to demonstrate cotainer widget
  //runApp(const ContainerExampleApp());

  // Example to demonstrate Cupertino style
  //runApp(const MyCupertinoApp());

  //Example to demonstrate Material style
  //runApp(const ScaffoldApp());

  //Example to demonstrate Listview widget
  //runApp(const ListViewExampleApp());

  //Example to demonstrate Gridview widget
  // runApp(const GridViewExampleApp());

  //Example to demonstrate runtime style selection of alert widget
 // runApp(const PlatformDialogApp());

  //Example to demonstrate Provider state management
// runApp( MultiProvider(
//   providers: [
//     ChangeNotifierProvider(create: (_) => CounterProvider()),
//   ],
//   child: const StateManagementApp(),
// ));

//Example to demonstrate Getx state management
//runApp(GetMaterialApp(home: GetxHome()));


//Example to demonstrate http api calls and manual json parsing
runApp(const ApiApp());
}

