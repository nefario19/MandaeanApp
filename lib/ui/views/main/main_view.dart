import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import '../news/news_view.dart';
import 'main_viewmodel.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L(context).newsTitle),
        actions: [
          IconButton(
            onPressed: () {
              // if (!viewModel.isBusy) {
              //   viewModel.signOut();
              // }
            },
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const IndexedStack(
        index: 1,
        // viewModel.currentIndex,
        children: [
          NewsView(),
          Placeholder(),
          Placeholder(),
        ],
      ),
    );
  }

  @override
  MainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainViewModel();
}
