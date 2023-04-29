import 'package:flutter/material.dart';

class DropdownLoader extends StatelessWidget {
  const DropdownLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text('Loading...'),
            ],
          ),
        ),

      ],
    );
  }
}
