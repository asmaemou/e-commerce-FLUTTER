import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
          )
        ]
      ),
    );
  }
}