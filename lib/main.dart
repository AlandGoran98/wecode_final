import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wecode_final/constants.dart';
import 'package:wecode_final/providers/product_provider.dart';
import 'package:wecode_final/screens/home_screen.dart';
import 'package:wecode_final/screens/product_detail_screen.dart';

//main  of these app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeShop',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              actionsIconTheme: IconThemeData(color: kMainBlue, size: 30)),
          colorScheme: ColorScheme.light().copyWith(
            primary: kMainBlue,
            secondary: kMainYellow,
          ),
        ),
        home: HomePage(),
        routes: {
          ProductDetailScreen.productDetail: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}
