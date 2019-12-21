import 'package:flutter/material.dart';
import 'package:inwentaryzacja/pages/10_scanner_page.dart';
import 'package:inwentaryzacja/pages/20_data_page.dart';
import 'package:inwentaryzacja/pages/30_file_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inwentaryzacja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: myTabController(),
    );
  }
}

DefaultTabController myTabController() {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: myAppBar(),
      body: TabBarView(children: <Widget>[
        ScannerPage(),
        DataPage(),
        FilePage()
      ],),
    ),
  );
}

myAppBar() {
  return AppBar(
    title: Text('Inwentaryzacja'),
    centerTitle: true,
    bottom: TabBar(
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.scanner),
        ),
        Tab(
          icon: Icon(Icons.data_usage),
        ),
        Tab(
          icon: Icon(Icons.file_download),
        )
      ],
    ),
  );
}
