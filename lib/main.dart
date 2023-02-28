import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_practice_one/iu/provider/ebook_provider.dart';
import 'package:widget_practice_one/iu/show_widgets/screen/show_widget_screen.dart';
import 'iu/screen/ebook_app_screen.dart';
import 'iu/show_widgets/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<EbookProvider>(create: (context) {
        return EbookProvider();
      },),
      ChangeNotifierProvider<WidgetsProvider>(create: (context) {
        return WidgetsProvider();
      },),
    ],
    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: ShowWidgetScreen(),
      );

    },);
  }
}


