import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'basestate.dart';
import 'viewmodel.dart';

class BaseConsumerWidget<T> extends ConsumerWidget{
  const BaseConsumerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(ViewModelProvider.notifier);
    throw UnimplementedError();
  }
}

class TextState extends BaseState {
  final String textValue;

  TextState(this.textValue);
}