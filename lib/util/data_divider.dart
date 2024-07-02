import 'package:flutter/material.dart';

class DataDivider extends StatelessWidget {
  final String date;
  const DataDivider({
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                ),
                child: Divider(
                  color: Color.fromARGB(255, 164, 163, 163),
                  thickness: 1,
                  endIndent: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(date),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 25,
                ),
                child: Divider(
                  color: Color.fromARGB(255, 164, 163, 163),
                  thickness: 1,
                  indent: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
