import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:taxiapp/components/navigation_destination_item.dart';

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
        return Container(
          width: double.infinity,
          height: 250,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer
                ),
                height: 55,)
            ],
          ),
        );
      }),
      body: Image.asset("assets/map_placeholder.jpg", fit: BoxFit.fitHeight, height: double.infinity,),
    );
;
  }
}
