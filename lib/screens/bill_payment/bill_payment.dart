import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/bill_payment/electricity_payment.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:adb_agent_banking/screens/customer_service/customer_service.dart';
import 'package:flutter/material.dart';

import '../components/custom_wrapper.dart';
import 'electricity_payment_history.dart';

class BillPayment extends StatelessWidget {
  BillPayment({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bills Payment'),
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

                    PrimaryButton( text: "ELECTRICITY BILL PAYMENT", press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ElectricityPayment();
                          },
                        ),
                      );

                    }, backgroundColor: AppConstants.KButtonColor,),
                      SizedBox(height: 10),
                      PrimaryButton( text: "ELECTRICITY BILL PAYMENT HISTORY", press: (){
                        print('ddddddd');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ElectricityPaymentHistory();
                            },
                          ),
                        );
                      }, backgroundColor: AppConstants.KButtonColor,)

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
