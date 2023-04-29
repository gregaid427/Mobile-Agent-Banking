import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:flutter/material.dart';

class WalletDeposit extends StatelessWidget {
  WalletDeposit({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet Deposit'),
        centerTitle: true,
        backgroundColor: AppConstants.KPrimaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(25.0),
              width: double.infinity,
              decoration:  BoxDecoration(
                  //color: Colors.green,
                border:Border.all(
                  color: Colors.grey.shade300,
                ),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                      key: _formKey,
                      child: Column(

                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Wallet Number',
                              // labelText: '',

                            ),
                            keyboardType: TextInputType.number,

                            //   validator: (input) => !input!.contains('@') ? 'Please Enter a valid email':null,
                            // onSaved: (input) => _username = input!,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Amount'),
                            keyboardType: TextInputType.number,
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
