import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:adb_agent_banking/screens/wallet_inter_bank_transfer/wallet_interbank_transfer_viewmodel.dart';
import 'package:flutter/material.dart';
import '../../core/enums/textfield_type.dart';
import '../components/custom_textfield.dart';
import '../components/dropdowns/bank_list_dropdown.dart';
import '../components/custom_wrapper.dart';

class WalletInterbankTransfer extends StatefulWidget {
  WalletInterbankTransfer({Key? key}) : super(key: key);

  @override
  State<WalletInterbankTransfer> createState() => _WalletInterbankTransferState();
}

class _WalletInterbankTransferState extends State<WalletInterbankTransfer> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WALLET INTER-BANK TRANSFER'),
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
                            hintText: 'Customer Wallet Number',
                            obscure: false,
                            type: TextFieldType.accountNo,
                            inputType: TextInputType.number,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                         BankListDropdown(
                            loading: false,
                            hintText: Walletinterbanktransfer_Viewmodel.selectedBank ??
                                'Gender',

                            onChanged: (String value) {
                              Walletinterbanktransfer_Viewmodel.setBank(value);
                              setState(() {
                                Walletinterbanktransfer_Viewmodel.selectedBank = Walletinterbanktransfer_Viewmodel.bank;

                              });
                            },
                            values: Walletinterbanktransfer_Viewmodel.banks,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomTextField(
                            hintText: 'Destination Account Number',
                            obscure: false,
                            type: TextFieldType.accountNo,
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
                            backgroundColor: AppConstants.KButtonColor,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
