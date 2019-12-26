import 'package:flutter/material.dart';
import 'package:inwentaryzacja/pages/10_scanner_page.dart';
import 'package:inwentaryzacja/pages/20_data_page.dart';
import 'package:inwentaryzacja/pages/30_file_page/30_file_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inwentaryzacja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: MyTabbedPage(),
    );
  }
}




class MyTabbedPage extends StatefulWidget {
  MyTabbedPage({Key key}) : super(key: key);

  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
        ScannerPage(),
        DataPage(),
        FilePage()
      ],),
    );
  }

  Widget _myAppBar() {
  return AppBar(
    title: Text('Inwentaryzacja'),
    centerTitle: true,
    actions: <Widget>[
     // _tabController.index==1 
     // ? 
      IconButton(icon: Icon(Icons.more_vert),
      onPressed: () {
        print('local menu na ${_tabController.index}');
      },)
     // : SizedBox(height: 0,)
    ],
    bottom: TabBar(
      controller: _tabController, 
      tabs: <Widget>[
        Tab(icon: Icon(Icons.scanner),),
        Tab(icon: Icon(Icons.data_usage),),
        Tab(icon: Icon(Icons.file_download),),
      ],
    ),
  );
}


}