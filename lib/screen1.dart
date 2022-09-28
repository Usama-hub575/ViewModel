import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/base_consumer_widget.dart';
import 'core/viewmodel.dart';
 //var screenProvider = StateNotifierProvider((ref) => text);

class Screen1 extends BaseConsumerWidget {
   Screen1({super.key});

   //Screen1({text})
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var text;
    var text2;
    final viewModel = ref.read(ViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text(
            'Screen1',
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
            TextField(
              onChanged: (value){
                text = value;
                viewModel.updateText(text);
              },
            ),
             TextField(
               onChanged: (value){
                 text2 = value;
                 viewModel.updateText(text2);
               },
             ),

             const SizedBox(
              height: 10,
            ),
             // Image.asset(
             //     Assets.images.screenshot.path,
             //         height: 100,
             //   width: 100,
             // ),
             ElevatedButton(onPressed: (){

              //print(ref.read(screenProvider));
              context.go('/page2');

              },
                child: const Text(
                  'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            )
          ],
        ),

      ),
    );

  }
}
