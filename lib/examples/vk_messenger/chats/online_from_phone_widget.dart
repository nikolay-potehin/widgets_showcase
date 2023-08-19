import 'package:flutter/material.dart';

class OnlineFromPhoneWidget extends StatelessWidget {
  const OnlineFromPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(34, 34, 0, 0),
      padding: const EdgeInsets.symmetric(vertical: 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: const Icon(
        Icons.stay_current_portrait_rounded,
        size: 12,
        color: Colors.green,
      ),
    );
  }
}
