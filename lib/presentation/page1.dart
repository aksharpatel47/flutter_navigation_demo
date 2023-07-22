import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shell/shell.bloc.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {
            context.read<ShellBloc>().add(
              ShowModalEvent(data: "Hello from Page One"),
            );
          },
          child: const Text("Show Modal"),
        ),
        OutlinedButton(
          onPressed: () {
            context.read<ShellBloc>().add(
              HideModalEvent(),
            );
          },
          child: const Text("Hide Modal"),
        ),
      ]
    );
  }
}
