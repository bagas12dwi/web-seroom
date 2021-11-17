import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatefulWidget {
  final Function(int index) onTapCallback;
  const SideMenu({
    Key? key, required this.onTapCallback
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  void drawerTap(int index) {
    widget.onTapCallback(index);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () => drawerTap(0),
          ),
          DrawerListTile(
            title: "Order",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () => drawerTap(1),
          ),
          DrawerListTile(
            title: "Histori Transaksi",
            svgSrc: "assets/icons/menu_task.svg",
            press: () => drawerTap(2),
          ),
          DrawerListTile(
            title: "Logout",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () => drawerTap(3),
          ),
          // DrawerListTile(
          //   title: "Store",
          //   svgSrc: "assets/icons/menu_store.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Notification",
          //   svgSrc: "assets/icons/menu_notification.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Profile",
          //   svgSrc: "assets/icons/menu_profile.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Settings",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
