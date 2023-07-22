import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'shell/shell.bloc.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Sub Page One"),
          subtitle: const Text("Sub Page One description"),
          onTap: () {
            context.go("/page1/sub");
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            onPressed: () {
              context.read<ShellBloc>().add(
                ShowModalEvent(data: "Hello from Page One"),
              );
            },
            child: const Text("Show Modal"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            onPressed: () {
              context.read<ShellBloc>().add(
                HideModalEvent(),
              );
            },
            child: const Text("Hide Modal"),
          ),
        ),
      ]
    );
  }
}
