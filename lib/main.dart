//import 'package:flutter/cupertino.dart';
//import 'package:flutter_web_designs/app.dart';
//
//void main() => runApp(const MyApp());
//
//class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return const CupertinoApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Cupertino App',
//      home: CupertinoStoreApp(),
//    );
//  }
//}
//
//class Home extends StatelessWidget {
//  const Home({
//    super.key,
//  });
//
//  @override
//  Widget build(BuildContext context) {
//    return const CupertinoPageScaffold(
//      navigationBar: CupertinoNavigationBar(
//        middle: Text('Cupertino App Bar'),
//      ),
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          Center(
//            child: Text('Hello World'),
//          ),
//          Center(
//            child: Text('Hello World'),
//          ),
//          Center(
//            child: Text('Hello World'),
//          ),
//        ],
//      ),
//    );
//  }
//}
//

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';             // NEW

import 'app.dart';
import 'model/app_state_model.dart';                 // NEW

void main() {
 return runApp(
   ChangeNotifierProvider<AppStateModel>(            // NEW
     create: (_) => AppStateModel()..loadProducts(), // NEW
     child: const CupertinoStoreApp(),               // NEW
   ),
 );
}
