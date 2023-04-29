import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:flutter/material.dart';

import '../../core/enums/textfield_type.dart';
import '../components/custom_textfield.dart';
import '../components/custom_wrapper.dart';

class WalletWithdrawal extends StatelessWidget {
  WalletWithdrawal({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Withdrawal'),
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
                  Form(
                      key: _formKey,
                      child: Column(

                        children: [
                        const CustomTextField(
                        hintText: 'Wallet Number',
                        obscure: false,
                        type: TextFieldType.amount,
                        inputType: TextInputType.number,
                      ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          const CustomTextField(
                            hintText: 'Amount',
                            obscure: false,
                            type: TextFieldType.amount,
                            inputType: TextInputType.number,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        PrimaryButton( text: "PROCEED", press: (){}, backgroundColor: AppConstants.KButtonColor,)
                        ],
                      )
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
