import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubPageOne extends StatelessWidget {
  const SubPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Inside Sub Page One"),
          subtitle: const Text("Sub Page One description"),
          onTap: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
