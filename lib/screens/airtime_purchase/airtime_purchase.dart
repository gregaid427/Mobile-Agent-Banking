import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:flutter/material.dart';
import '../../core/enums/textfield_type.dart';
import '../components/custom_textfield.dart';
import '../components/custom_wrapper.dart';
import '../components/dropdowns/network_list_dropdown.dart';
import 'AirtimePurchase_viewmodel.dart';

class AirtimePurchase extends StatefulWidget {
  AirtimePurchase({Key? key}) : super(key: key);

  @override
  State<AirtimePurchase> createState() => _AirtimePurchaseState();
}

class _AirtimePurchaseState extends State<AirtimePurchase> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Airtime Purchase'),
          centerTitle: true,
          backgroundColor: AppConstants.KPrimaryColor,
        ),
        body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.jpg",
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CumstomWrapper(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            NetworkListDropdown(

                              loading: false,
                              hintText: AirtimePurchaseViewModel.selectedNetwork ??
                                  'Select Preferred Network',
                              onChanged: (String value) {
                                AirtimePurchaseViewModel.setNetwork(value);
                                setState(() {
                                  AirtimePurchaseViewModel.selectedNetwork = AirtimePurchaseViewModel.network;

                                });
                              },
                              values: AirtimePurchaseViewModel.networks,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const CustomTextField(
                              hintText: 'Phone Number',
                              obscure: false,
                              type: TextFieldType.phone,
                              inputType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const CustomTextField(
                              hintText: 'Amount',
                              obscure: false,
                              type: TextFieldType.amount,
                              inputType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            PrimaryButton(
                                text: "PROCEED",
                                press: () {},
                                backgroundColor: AppConstants.KButtonColor)
                          ],
                        ))
                  ],
                )),
              )
            ],
          ),
        ));
  }
}
