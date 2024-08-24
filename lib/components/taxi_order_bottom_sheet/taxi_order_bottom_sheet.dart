import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:taxiapp/components/navigate_text_field/navigate_text_field.dart';
import 'package:taxiapp/components/taxi_choice_card/taxi_choice_card.dart';
import 'package:taxiapp/domain/state/theme_state/theme_cubit.dart';

class TaxiOrderBottomSheet extends StatefulWidget {
  const TaxiOrderBottomSheet({super.key});

  @override
  State<TaxiOrderBottomSheet> createState() => _TaxiOrderBottomSheetState();
}

class _TaxiOrderBottomSheetState extends State<TaxiOrderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          // height: 300,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(shape: BoxShape.rectangle),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavigateTextField(
                  label: "Откуда",
                  prefix: IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.map,
                        size: 28,
                      )),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.clock_copy),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: context.read<ThemeCubit>().state.grey,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                NavigateTextField(
                  label: "Куда",
                  prefix: IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.location,
                        size: 28,
                      )),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.add_copy,
                      size: 28,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: context.read<ThemeCubit>().state.grey,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 110,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TaxiChoiceCard(),
                        TaxiChoiceCard(),
                        TaxiChoiceCard(),
                        TaxiChoiceCard(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                            height: 59,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold, color: context.watch<ThemeCubit>().state.primary),
                                  elevation: 0,
                                    backgroundColor: context
                                        .watch<ThemeCubit>()
                                        .state
                                        .primary
                                        .withOpacity(0.1)),
                                onPressed: () {},
                                child: Text("168₽",)))),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                            height: 59,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  foregroundColor: Colors.black,
                                  textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
                                    backgroundColor: context
                                        .watch<ThemeCubit>()
                                        .state
                                        .primary),
                                onPressed: () {},
                                child: Text("Заказать"))))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
