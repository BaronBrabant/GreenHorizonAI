import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reward_tracker/home/home.dart';
import 'package:auto_route/auto_route.dart';

class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome to our app',
          ),
          TextButton(
            onPressed: () {
              //AutoRouter.of(context).push(const ChatRoute());
            },
            child: const Text('Add Reward'),
          ),
          Text(
            '${state.weeklyTime}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ));
    });
  }
}
