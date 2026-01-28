import 'package:bushido/ui/common/widgets/news_card_content.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:bushido/services/common/environment.dart';
import 'package:bushido/ui/common/ui_helpers.dart';

import '../../common/widgets/news_card_border.dart';
import 'news_viewmodel.dart';

class NewsView extends StackedView<NewsViewModel> {
  const NewsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    NewsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: Text(L(context).newsTitle),),
      body: Center(
        child: viewModel.isBusy
            ? const CircularProgressIndicator()
            : viewModel.newsItems.value.isEmpty
                ? const CircularProgressIndicator()
                : ListView.separated(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(Environment.size16),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 1,
                        shadowColor: Colors.white,
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(Environment.size12),
                          ),
                          side: BorderSide(
                            color: Colors.grey,
                            width: 0.2,
                          ),
                        ),
                        child: Stack(
                          children: [
                            NewsCardContent(
                              viewModel: viewModel,
                              index: index,
                            ),
                            const NewsCardBorder(),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => Center(
                      child: SizedBox(
                        width: halfScreenWidth(context),
                        child: Divider(
                          height: Environment.size32,
                          thickness: 0.5,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    itemCount: viewModel.newsItems.value.length,
                  ),
      ),
    );
  }

  @override
  void onViewModelReady(NewsViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  NewsViewModel viewModelBuilder(BuildContext context) => NewsViewModel();
}
