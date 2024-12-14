import 'package:flutter/material.dart';

import '../../utils/decoration.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Screen',
          style: boldTextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
