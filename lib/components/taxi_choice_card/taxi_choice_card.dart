import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxiapp/domain/state/theme_state/theme_cubit.dart';

class TaxiChoiceCard extends StatelessWidget {
  const TaxiChoiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 110,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: context.watch<ThemeCubit>().state.card,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text("data"),
        ),
      ),
    );
  }
}
