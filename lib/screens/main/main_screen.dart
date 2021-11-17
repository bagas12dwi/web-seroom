import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/dashboard/historiTransaksi_screen.dart';
import 'package:admin/screens/dashboard/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;

  List<Widget> listPage = [
    DashboardScreen(),
    OrderScreen(),
    HistoriTransaksiScreen()
  ];

  void changePage(int param) {
    setState(() {
      currentPage = param;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(onTapCallback: (index) => changePage(index) ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(onTapCallback: (index) => changePage(index) ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: listPage[currentPage],
            ),
          ],
        ),
      ),
    );
  }
}
