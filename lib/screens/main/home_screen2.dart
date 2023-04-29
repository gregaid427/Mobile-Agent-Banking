import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  late TextEditingController _controller1;
  late TextEditingController _controller2;
  late TextEditingController _controller3;
  late TextEditingController _controller4;

  //String _initialValue = '';
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';
  String _valueChanged2 = '';
  String _valueToValidate2 = '';
  String _valueSaved2 = '';
  String _valueChanged3 = '';
  String _valueToValidate3 = '';
  String _valueSaved3 = '';
  String _valueChanged4 = '';
  String _valueToValidate4 = '';
  String _valueSaved4 = '';

  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = 'pt_BR';
    //_initialValue = DateTime.now().toString();
    _controller1 = TextEditingController(text: DateTime.now().toString());
    _controller2 = TextEditingController(text: DateTime.now().toString());
    _controller3 = TextEditingController(text: DateTime.now().toString());

    String lsHour = TimeOfDay.now().hour.toString().padLeft(2, '0');
    String lsMinute = TimeOfDay.now().minute.toString().padLeft(2, '0');
    _controller4 = TextEditingController(text: '$lsHour:$lsMinute');

    _getValue();
  }

  /// This implementation is just to simulate a load data behavior
  /// from a data base sqlite or from a API
  Future<void> _getValue() async {
    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        //_initialValue = '2000-10-22 14:30';
        _controller1.text = '2000-09-20 14:30';
        _controller2.text = '2001-10-21 15:31';
        _controller3.text = '2002-11-22';
        _controller4.text = '17:01';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter DateTimePicker Demo'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Form(
          key: _oFormKey,
          child: Column(
            children: <Widget>[
              // DateTimePicker(
              //   type: DateTimePickerType.dateTimeSeparate,
              //   dateMask: 'd MMM, yyyy',
              //   controller: _controller1,
              //   //initialValue: _initialValue,
              //   firstDate: DateTime(2000),
              //   lastDate: DateTime(2100),
              //   icon: Icon(Icons.event),
              //   dateLabelText: 'Date',
              //   timeLabelText: "Hour",
              //   //use24HourFormat: false,
              //   //locale: Locale('pt', 'BR'),
              //   selectableDayPredicate: (date) {
              //     if (date.weekday == 6 || date.weekday == 7) {
              //       return false;
              //     }
              //     return true;
              //   },
              //   onChanged: (val) => setState(() => _valueChanged1 = val),
              //   validator: (val) {
              //     setState(() => _valueToValidate1 = val ?? '');
              //     return null;
              //   },
              //   onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
              // ),
              // DateTimePicker(
              //   type: DateTimePickerType.dateTime,
              //   dateMask: 'd MMMM, yyyy - hh:mm a',
              //   controller: _controller2,
              //   //initialValue: _initialValue,
              //   firstDate: DateTime(2000),
              //   lastDate: DateTime(2100),
              //   //icon: Icon(Icons.event),
              //   dateLabelText: 'Date Time',
              //   use24HourFormat: false,
              //   locale: Locale('en', 'US'),
              //   onChanged: (val) => setState(() => _valueChanged2 = val),
              //   validator: (val) {
              //     setState(() => _valueToValidate2 = val ?? '');
              //     return null;
              //   },
              //   onSaved: (val) => setState(() => _valueSaved2 = val ?? ''),
              // ),
              DateTimePicker(
                type: DateTimePickerType.date,
                //dateMask: 'yyyy/MM/dd',
                controller: _controller3,
                //initialValue: _initialValue,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                locale: Locale('en', 'US'),
                onChanged: (val) => setState(() => _valueChanged3 = val),
                validator: (val) {
                  setState(() => _valueToValidate3 = val ?? '');
                  return null;
                },
                onSaved: (val) => setState(() => _valueSaved3 = val ?? ''),
              ),

            ],
          ),
        ),
      ),
    );
  }
}