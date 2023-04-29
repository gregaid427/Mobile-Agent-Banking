import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:flutter/material.dart';
import '../components/custom_wrapper.dart';

class InterBankTransfer extends StatelessWidget {
  InterBankTransfer({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inter-Bank Transfer'),
        centerTitle: true,
        backgroundColor: AppConstants.KPrimaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CumstomWrapper( child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(

                    children: [

                    PrimaryButton( text: "CASH", press: (){}, backgroundColor: AppConstants.KButtonColor,),
                      PrimaryButton( text: "WALLET", press: (){}, backgroundColor: AppConstants.KButtonColor,)

                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
