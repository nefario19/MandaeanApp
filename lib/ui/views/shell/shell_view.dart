import 'package:bushido/ui/common/ui_helpers.dart';
import 'package:bushido/ui/views/news/news_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'shell_viewmodel.dart';

class ShellView extends StackedView<ShellViewModel> {
  const ShellView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShellViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L(context).newsTitle),
        actions: [
          IconButton(
            onPressed: () {
              if (!viewModel.isBusy) {
                viewModel.signOut();
              }
            },
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
      body: IndexedStack(
        index: viewModel.index.value,
        children: const [
          NewsView(),
        ],
      ),
    );
  }

  @override
  ShellViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShellViewModel();
}
