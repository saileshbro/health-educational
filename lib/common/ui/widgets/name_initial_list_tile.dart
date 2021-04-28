import 'package:flutter/material.dart';

class NameInitialListTile extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const NameInitialListTile({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        borderRadius: BorderRadius.circular(5),
        elevation: 1.0,
        child: Container(
          height: 60.0,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 13, 0),
                child: CircleAvatar(
                  radius: 23,
                  child: Text(
                    label[0],
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.lightBlue[400],
                ),
              ),
              Expanded(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
