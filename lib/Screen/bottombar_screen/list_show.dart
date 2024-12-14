import 'package:flutter/material.dart';

import '../../utils/decoration.dart';

class list_show extends StatelessWidget {
  const list_show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'List Show',
          style: boldTextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
