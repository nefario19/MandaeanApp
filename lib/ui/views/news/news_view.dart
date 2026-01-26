import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'news_viewmodel.dart';

class NewsView extends StackedView<NewsViewModel> {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NewsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text("News Debug")),
      body: Center(
        child: viewModel.isBusy
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 60),
                  const SizedBox(height: 10),
                  Text(
                    "Success! Check de logs.",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
      ),
    );
  }

  @override
  void onViewModelReady(NewsViewModel viewModel) {
    // DIT is de veilige plek voor je init
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  NewsViewModel viewModelBuilder(BuildContext context) => NewsViewModel();
}
