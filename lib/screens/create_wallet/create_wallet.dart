import 'package:adb_agent_banking/core/app_constants.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:lean_file_picker/lean_file_picker.dart';
import '../../core/enums/textfield_type.dart';
import '../components/custom_textfield.dart';
import '../components/custom_wrapper.dart';
import '../components/date_field_container.dart';
import '../components/dropdowns/gender_list_dropdown.dart';
import '../components/dropdowns/idType_list_dropdown.dart';
import '../components/text_field_container.dart';
import 'create_wallet_viewmodel.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({Key? key}) : super(key: key);

  @override
  State<CreateWallet> createState() => _CreateWalletState();
}

var _copying = false;
var _identityPick = 'No File Selected';
var _passportPick = 'No File Selected';
var _signaturePick = 'No File Selected';


class _CreateWalletState extends State<CreateWallet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Wallet'),
        centerTitle: true,
        backgroundColor: AppConstants.KPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CumstomWrapper(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic Info',
                      style: TextStyle(
                          color: AppConstants.KPrimaryColor, fontSize: 17),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const CustomTextField(
                              hintText: 'First Name',
                              obscure: false,
                              type: TextFieldType.name,
                              inputType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const CustomTextField(
                              hintText: 'Middle Name',
                              obscure: false,
                              type: TextFieldType.name,
                              inputType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const CustomTextField(
                              hintText: 'Last Name',
                              obscure: false,
                              type: TextFieldType.name,
                              inputType: TextInputType.text,
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
                              hintText: 'Email',
                              obscure: false,
                              type: TextFieldType.email,
                              inputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const CustomTextField(
                              hintText: 'Address',
                              obscure: false,
                              type: TextFieldType.name,
                              inputType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                           GenderListDropdown(
                              loading: false,
                              hintText: CreateWallet_ViewModel.selectedIdType ??
                                  'Gender',

                              onChanged: (String value) {
                                CreateWallet_ViewModel.setgender(value);
                                setState(() {
                                  CreateWallet_ViewModel.selectedGender = CreateWallet_ViewModel.gender;

                                });
                              },
                              values: CreateWallet_ViewModel.genders,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            DateFieldContainer(
                              child:Row(
                                children: [
                                  Expanded(child: Text('Date of Birth*',style: TextStyle(fontSize: 17, color: Color.fromRGBO(78, 81, 86, 0.6980392156862745),))),
                                  Expanded(

                                    child: DateTimePicker(
                                      type: DateTimePickerType.date,
                                      //dateMask: 'yyyy/MM/dd',
                                      // controller: _controller3,
                                      initialValue: CreateWallet_ViewModel.initialdate,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100),
                                      icon: Icon(Icons.event),
                                      // dateLabelText: 'Date',
                                      locale: Locale('en', 'US'),
                                      onChanged: (val) {setState(() => CreateWallet_ViewModel.birthdate = val);
                                        // print(CreateWallet_ViewModel.birthdate);
                                      } ,
                                      validator: (val) {
                                        setState(() => CreateWallet_ViewModel.birthdate = val);
                                        return null;
                                      },

                                    ),
                                  ),
                                ],
                              ),), const SizedBox(
                              height: 10.0,
                            ),
                             IdTypeListDropdown(
                              // onChanged: model.setAccount,
                              loading: false,
                              hintText: CreateWallet_ViewModel.selectedIdType ??
                                  'Select ID Type*',
                              onChanged: (String value) {
                                CreateWallet_ViewModel.setid(value);
                                setState(() {
                                  CreateWallet_ViewModel.selectedIdType = CreateWallet_ViewModel.idType;

                                });
                              },
                              values: CreateWallet_ViewModel.idTypes,

                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const CustomTextField(
                              hintText: 'ID Number*',
                              obscure: false,
                              type: TextFieldType.name,
                              inputType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),

                            TextFieldContainer(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Customer Mandate',
                                      style: TextStyle(
                                          color: Color(0xff8ab039),
                                          fontSize: 17),
                                    ),
                                    const Divider(
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Identification',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color.fromRGBO(
                                                        78,
                                                        81,
                                                        86,
                                                        0.6980392156862745),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              const SizedBox(height: 10),
                                              Text(_identityPick),
                                              const SizedBox(height: 10),
                                              PrimaryButton(
                                                text: "Select File",
                                                textColor:
                                                    AppConstants.KPrimaryColor,
                                                press: () async {
                                                  final file = await pickFile(
                                                    allowedExtensions: [

                                                      'PDF',
                                                      'jpeg',
                                                      'JPG',
                                                      'PNG'
                                                    ],
                                                    allowedMimeTypes: [
                                                      'image/jpeg',
                                                      'text/*'
                                                    ],
                                                    listener: (status) =>
                                                        setState(() =>
                                                            _copying = status ==
                                                                FilePickerStatus
                                                                    .copying),
                                                  );
                                                  if (file != null) {
                                                    final path = file.path;
                                                    final size =
                                                        file.lengthSync();
                                                    file.deleteSync();

                                                    final splitted =
                                                        path.split('/');
                                                    final filename = splitted[
                                                        splitted.length - 1];

                                                    setState(() => _identityPick =
                                                        '$filename');
                                                  } else {
                                                    setState(() => _identityPick =
                                                        'No File Selected');
                                                  }
                                                },
                                                backgroundColor: AppConstants
                                                    .KSecondaryColor,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),


                                    const Divider(
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Passport',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color.fromRGBO(
                                                        78,
                                                        81,
                                                        86,
                                                        0.6980392156862745),
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                              const SizedBox(height: 10),
                                              Text(_passportPick),
                                              const SizedBox(height: 10),
                                              PrimaryButton(
                                                text: "Select File",
                                                textColor:
                                                AppConstants.KPrimaryColor,
                                                press: () async {
                                                  final file = await pickFile(
                                                    allowedExtensions: [

                                                      'PDF',
                                                      'jpeg',
                                                      'JPG',
                                                      'PNG'
                                                    ],
                                                    allowedMimeTypes: [
                                                      'image/jpeg',
                                                      'text/*'
                                                    ],
                                                    listener: (status) =>
                                                        setState(() =>
                                                        _copying = status ==
                                                            FilePickerStatus
                                                                .copying),
                                                  );
                                                  if (file != null) {
                                                    final path = file.path;
                                                    final size =
                                                    file.lengthSync();
                                                    file.deleteSync();

                                                    final splitted =
                                                    path.split('/');
                                                    final filename = splitted[
                                                    splitted.length - 1];

                                                    setState(() => _passportPick =
                                                    filename);
                                                  } else {
                                                    setState(() => _passportPick =
                                                    'No File Selected');
                                                  }
                                                },
                                                backgroundColor: AppConstants
                                                    .KSecondaryColor,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),


                                    const Divider(
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Signature',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color.fromRGBO(
                                                        78,
                                                        81,
                                                        86,
                                                        0.6980392156862745),
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                              const SizedBox(height: 10),
                                              Text(_signaturePick
                                              ),
                                              const SizedBox(height: 10),
                                              PrimaryButton(
                                                text: "Select File",
                                                textColor:
                                                AppConstants.KPrimaryColor,
                                                press: () async {
                                                  final file = await pickFile(
                                                    allowedExtensions: [

                                                      'PDF',
                                                      'jpeg',
                                                      'JPG',
                                                      'PNG'
                                                    ],
                                                    allowedMimeTypes: [
                                                      'image/jpeg',
                                                      'text/*'
                                                    ],
                                                    listener: (status) =>
                                                        setState(() =>
                                                        _copying = status ==
                                                            FilePickerStatus
                                                                .copying),
                                                  );
                                                  if (file != null) {
                                                    final path = file.path;
                                                    final size =
                                                    file.lengthSync();
                                                    file.deleteSync();

                                                    final splitted =
                                                    path.split('/');
                                                    final filename = splitted[
                                                    splitted.length - 1];

                                                    setState(() => _signaturePick =
                                                    filename);
                                                  } else {
                                                    setState(() => _signaturePick =
                                                    'No File Selected');
                                                  }
                                                },
                                                backgroundColor: AppConstants
                                                    .KSecondaryColor,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
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
      ),
    );
  }
}
