import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:flutter/material.dart';

import '../case_log/case_log.dart';
import '../components/custom_wrapper.dart';

class CustomerService extends StatelessWidget {
  CustomerService({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Service'),
        centerTitle: true,
        backgroundColor: AppConstants.KPrimaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CumstomWrapper( child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    PrimaryButton( text: "LOG CASE", press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CaseLog();
                          },
                        ),
                      );

                    }, backgroundColor: AppConstants.KButtonColor,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
