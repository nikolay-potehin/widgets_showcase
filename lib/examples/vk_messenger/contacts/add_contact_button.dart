import 'package:flutter/material.dart';

class AddContactButton extends StatelessWidget {
  const AddContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.add,
                  size: 28,
                  color: Colors.blue.shade600,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Создать контакт',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
