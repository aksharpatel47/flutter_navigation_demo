import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // 10 items in the list of different setting types
      children: List.generate(10, (index) {
        return ListTile(
          title: Text("Setting $index"),
          subtitle: Text("Setting $index description"),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        );
      }),
    );
  }
}
