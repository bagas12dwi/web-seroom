import 'package:admin/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(tittleName: "List Orderan",),
              SizedBox(height: defaultPadding,)
            ],
          ),
        )
    );
  }
}
