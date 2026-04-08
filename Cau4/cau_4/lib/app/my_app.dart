import 'package:flutter/material.dart';

import 'package:cau_4/utils/app_constants.dart';
import 'package:cau_4/views/product_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
	return MaterialApp(
	  debugShowCheckedModeBanner: false,
	  title: AppConstants.appTitle,
	  theme: ThemeData(
		colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
		useMaterial3: true,
	  ),
	  home: const ProductListScreen(),
	);
  }
}


