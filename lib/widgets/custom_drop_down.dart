import 'package:crypto_app/data/constants.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final List<String> droplist;
  late String dropdownval;
  DropDown({Key? key, required this.droplist, required this.dropdownval})
      : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = ' 1 Month';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_rounded),
        elevation: 16,
        isExpanded: true,
        style: TextStyle(color: CustomColor.kblack),
        underline: Container(
          height: 2,
          color: CustomColor.kblack,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>[' 1 Month', ' 2 Month', ' 3 Month', ' 4 Month']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
