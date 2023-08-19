import 'package:flutter/material.dart';

class CallsPlanned extends StatelessWidget {
  const CallsPlanned({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 50,
                  color: Colors.blueGrey.shade300,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Встреч пока нет',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Запланируйте звонок, чтобы увидеть его в календаре',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
