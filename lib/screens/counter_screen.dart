import 'package:counter_app_bloc/blocs/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/blocs/bloc/counter_event.dart';
import 'package:counter_app_bloc/blocs/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CounterBloc>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter App Bloc'),
        ),
        body: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                'Counter : ${state.counterValue}',
                style: TextStyle(fontSize: 28),
              );
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                bloc.add(IncrementEvent());
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.add(DecrementEvent());
              },
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
