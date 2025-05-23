import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PageState {
  info,
  charger,
}

class PageStateNotifier extends StateNotifier<PageState> {
  PageStateNotifier() : super(PageState.info);

  void setInfo() {
    state = PageState.info;
  }

  void setCharger() {
    state = PageState.charger;
  }
}

final pageStateProvider =
    StateNotifierProvider<PageStateNotifier, PageState>((ref) {
  return PageStateNotifier();
});
