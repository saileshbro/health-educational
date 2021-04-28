import 'package:flutter/material.dart';

class DonationDatePicker extends StatelessWidget {
  final DateTime date;
  final void Function(DateTime? date) onDateChanged;
  const DonationDatePicker({
    Key? key,
    required this.date,
    required this.onDateChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
              child: Text(
                'Select date of last donation :',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.black87,
          ),
          SizedBox(
            width: 4,
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "${date.day}-${date.month}-${date.year}",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              onTap: () {
                selectDate(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
    );
    onDateChanged(picked);
  }
}
