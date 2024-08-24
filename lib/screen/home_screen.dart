import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxiapp/components/taxi_order_bottom_sheet/taxi_order_bottom_sheet.dart';
import 'package:taxiapp/domain/state/theme_state/theme_cubit.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(onClosing: () {}, builder: (context) {
        return const TaxiOrderBottomSheet();
      }),
      body: Image.asset("assets/map_placeholder.jpg", fit: BoxFit.fitHeight, height: double.infinity,),
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Center(child: const Text("Я карта, я карта я карта я карта"))),
    );
;
  }
}
