import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled1/core/viewmodel.dart';
import 'core/base_consumer_widget.dart';

class Screen2 extends ConsumerWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final viewModel = ref.read(ViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text(
            'Screen2',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text(
              // ignore: invalid_use_of_protected_member
              (viewModel.state as TextState).textValue,
              style: Theme.of(context).textTheme.displayMedium,
            ),

            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: ()=> context.go('/'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child:  const Text(
                'Go back',
                style: TextStyle(color: Colors.white,),),
            )
          ],
        ),

      ),
    );

  }
}
