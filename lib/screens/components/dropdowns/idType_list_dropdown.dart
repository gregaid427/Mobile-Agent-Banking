
import 'package:adb_agent_banking/screens/components/dropdowns/dropdown_loader.dart';
import 'package:adb_agent_banking/screens/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_constants.dart';
import '../primary_button.dart';

class IdTypeListDropdown extends StatelessWidget {
  final String? hintText;
  final bool loading;
  final ValueChanged<String> onChanged;
  final List values;

  const IdTypeListDropdown({
    Key? key,
    this.hintText,
    required this.onChanged,
    required this.values,
    required this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loading
        ? DropdownLoader()
        : GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.45,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                  bottom: 15,
                ),
                child: Column(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Select ID Type',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff8ab039),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      height: 2,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    for (String item in values)

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: TextButton(onPressed: (){
                          onChanged(item);
                          Navigator.pop(context);
                        },   style: TextButton.styleFrom(
                          minimumSize: Size(double.infinity, 0),
                          backgroundColor: AppConstants.KSecondaryColor,
                          padding: EdgeInsets.all(15.0),


                        ), child: Text(item,style: TextStyle(color: AppConstants.KPrimaryColor,fontSize: 17),),),
                      ),



                  ],
                ),
              ),
            );
          },
        );
      },
      child: TextFieldContainer(
          child:Row(
            children: [
              Expanded(
                child: Text(
                  '$hintText',
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 17.0,
                    color: Color.fromRGBO(78, 81, 86, 0.6980392156862745),
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xff8ab039),
                size: 30,
              ),
            ],
          )),
    );
  }
}

