import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../dependencies.dart';

import 'shell.bloc.dart';

class ShellScreen extends StatelessWidget {
  final Widget child;

  const ShellScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ShellBloc>(),
      child: BlocConsumer<ShellBloc, ShellBlocState>(
        listener: (context, state) {
          switch (state.currentIndex) {
            case 0:
              context.go("/page1");
              break;
            case 1:
              context.go("/page2");
              break;
          }
        },
        builder: (context, state) {
          return ShellPage(
            state: state,
            child: child,
          );
        },
      ),
    );
  }
}

class ShellPage extends StatelessWidget {
  const ShellPage({
    super.key,
    required this.child,
    required this.state,
  });

  final Widget child;
  final ShellBlocState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Stack(
        children: [
          child,
          state.modalData == null ? ShellBottomNavigationBar(state: state) : Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child: Text(
              "Modal: ${state.modalData}",
            ),
          )
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text("Akshardham App"),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            context.push("/notifications");
          },
        )
      ],
    );
  }
}

class ShellBottomNavigationBar extends StatelessWidget {
  const ShellBottomNavigationBar({
    super.key,
    required this.state,
  });

  final ShellBlocState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: state.currentIndex,
        onTap: (index) {
          _onTap(context, index);
        },
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    context.read<ShellBloc>().add(ButtonTapEvent(index: index));
  }
}
