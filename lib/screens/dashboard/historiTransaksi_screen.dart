import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';

class HistoriTransaksiScreen extends StatefulWidget {
  const HistoriTransaksiScreen({Key? key}) : super(key: key);

  @override
  _HistoriTransaksiScreenState createState() => _HistoriTransaksiScreenState();
}

class _HistoriTransaksiScreenState extends State<HistoriTransaksiScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(tittleName: "Histori Transaksi"),
              SizedBox(height: defaultPadding,)
            ],
          ),
        )
    );
  }
}
