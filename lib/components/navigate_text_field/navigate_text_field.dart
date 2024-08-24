import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:taxiapp/app/app.dart';
import 'package:taxiapp/domain/state/theme_state/theme_cubit.dart';

class NavigateTextField extends StatelessWidget {
  const NavigateTextField({super.key, this.controller, required this.prefix, required this.trailing, this.label});

  final TextEditingController? controller;
    final Widget prefix;
    final Widget trailing;
    final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: context.read<ThemeCubit>().state.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.read<ThemeCubit>().state.cardBorder, width: 1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prefix,
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              // expands: true,
              decoration: InputDecoration(
                  label: Text(label ?? ""),
                  // isCollapsed: true,
                  // prefix: IconButton(onPressed: () {}, icon: Icon(Iconsax.route_square_copy)),
                  // fillColor: context.watch<ThemeCubit>().state.card,
                  filled: false,
                  border: InputBorder.none),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          trailing,
        ],
      ),
    );
  }
}
