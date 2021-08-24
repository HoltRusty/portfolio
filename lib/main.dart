import 'dart:html';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/mobile_drawer.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/chat_button.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import 'components/components.dart';
import 'widgets/widgets.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(40, 40, 40, 1),
        primaryColor: Color.fromRGBO(122, 40, 255, 1),
        shadowColor: Color.fromRGBO(134, 134, 134, 1),
        // This is the theme of your application.-
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 0;
  double scrollOffset = 0.0;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          scrollOffset = _scrollController.offset;
        });
      });
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      endDrawer: MobileDrawer(
        isHome: true,
      ),
      key: scaffoldKey,
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: Color.fromRGBO(40, 40, 40, 1),
              title: Text(
                'Holt Russell',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
                  icon: Icon(Icons.menu_rounded),
                  color: Colors.white,
                ),
              ],
            )
          : PreferredSize(
              preferredSize: Size(width, 50.0),
              child: CustomAppBar(
                isHome: true,
              ),
            ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ContentHeader(),
          ),
          SliverToBoxAdapter(
            child: FeatureBanner(),
          ),
          SliverToBoxAdapter(
            child: MainFeatures(),
          ),
          SliverToBoxAdapter(
            child: CaseStudy(),
          ),
          SliverToBoxAdapter(
            child: FinalCTA(),
          ),
          SliverToBoxAdapter(
            child: CustomBottomNav(
              index: 0,
            ),
          ),
        ],
      ),
    );
  }
}
