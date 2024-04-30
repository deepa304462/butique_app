
import 'package:butique_app/measurments/blouse.dart';
import 'package:butique_app/measurments/churidar_measurement.dart';
import 'package:butique_app/measurments/gown_or_frock.dart';
import 'package:butique_app/measurments/pant_plazo_measurement.dart';
import 'package:butique_app/measurments/salwar.dart';
import 'package:butique_app/measurments/shirt_measurment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'measurments/lahnga.dart';

// ignore: must_be_immutable
class AddMeasurementNew extends StatefulWidget {
  String customerDetailList;
   AddMeasurementNew(this.customerDetailList, {super.key});

  @override
  State<AddMeasurementNew> createState() => _AddMeasurementNewState();
}

class _AddMeasurementNewState extends State<AddMeasurementNew> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple.shade400,
        title: Text(
          "Add Measurements",
          style: GoogleFonts.kaiseiTokumin(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelStyle: GoogleFonts.ptSerif(fontSize:18,fontWeight:FontWeight.bold,color:Colors.black),
          unselectedLabelStyle:GoogleFonts.ptSerif(fontSize:18,fontWeight:FontWeight.bold,color:Colors.black),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.deepPurple.shade200,
          padding: const EdgeInsets.all(4),
          tabs:  [
            Container(
              height: 40,
              width: 175,
              decoration:  BoxDecoration(
                color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(30)
              ),
                child: const Tab(text: 'Shirt')),
            Container(
                height: 40,
                width: 175,
                decoration:  BoxDecoration(
                  color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Tab(text: 'Pant/Plazo')),
            Container(
                height: 40,
                width: 175,
                decoration:  BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Tab(text: 'Salwar')),
          Container(
              height: 40,
              width: 175,
              decoration:  BoxDecoration(
                  color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(30)
              ),child: const Tab(text: 'Churidar')),
            Container(
                height: 40,
                width: 175,
                decoration:  BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Tab(text: 'Legnga & Salwar')),
            Container(
                height: 40,
                width: 175,
                decoration:  BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(30)
                ),child: const Tab(text: 'Gown or Frock')),
            Container(
                height: 40,
                width: 175,
                decoration:  BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(30)
                ),child: const Tab(text: 'Blouse')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  const [
          // Contents of Tab 1
          ShirtMeasurement(),

          // Contents of Tab 2
         PantOrPlazoMeasurement(),
          // Contents of Tab 3
        Salwar(),
          // Contents of Tab 4
          ChuridarMeasurement(),
          // Contents of Tab 5
          Lahnga(),
          // Contents of Tab 6
          GownOrFrock(),
          // Contents of Tab 7
          Blouse(),
        ],
      ),
    );
  }

}

