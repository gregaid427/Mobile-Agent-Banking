import 'package:flutter/material.dart';

import '../../core/app_constants.dart';



class CumstomWrapper extends StatelessWidget {
  final Widget child;
  const CumstomWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppConstants.KSecondaryColor,
            border: Border.all(
              color: AppConstants.KSecondaryColor,
            ),
            boxShadow: const [
              BoxShadow(color: Color(0xffb3b4b0), blurRadius: 10.0)
            ],
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: child);
  }
}