import 'base_consumer_widget.dart';
import 'basestate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ViewModelProvider = StateNotifierProvider<ViewModel, BaseState>((ref) {
  return ViewModel(BaseState());
});

class ViewModel extends StateNotifier<BaseState> {
  ViewModel(BaseState state) : super(state);
  void updateText(final text) {
    TextState(text);
  }

}


