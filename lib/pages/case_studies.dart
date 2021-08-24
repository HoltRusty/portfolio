import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';
import 'package:my_portfolio/widgets/custom_app_bar.dart';
import 'package:my_portfolio/widgets/responsive.dart';

import '../constants.dart';

class CaseStudies extends StatefulWidget {
  const CaseStudies({Key? key}) : super(key: key);

  @override
  _CaseStudiesState createState() => _CaseStudiesState();
}

class _CaseStudiesState extends State<CaseStudies> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var scaffoldKey = GlobalKey<ScaffoldState>();
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
                isHome: false,
              ),
            ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                height: height < 800 ? 800 : height - 300, child: CaseStudy()),
          ),
          SliverToBoxAdapter(
            child: CustomBottomNav(
              index: 5,
            ),
          ),
        ],
      ),
    );
  }
}
