import 'package:bushido/services/common/environment.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';

import '../../common/widgets/icon_label_date.dart';
import '../../common/widgets/icon_label_text.dart';
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
      appBar: AppBar(title: const Text("Nieuws")),
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
                            color: Color(0xFFC4A053),
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            // The actual content
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AspectRatio(
                                  aspectRatio: 4 / 3,
                                  child: Image.asset(
                                    'assets/images/darfesh.png',
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.all(Environment.size8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        maxLines: 2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                        viewModel.newsItems.value[index].title,
                                      ),
                                      const Gap(Environment.size16),
                                      Text(
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                        viewModel
                                            .newsItems.value[index].content,
                                      ),
                                      const Gap(Environment.size16),
                                      // Label Row
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: IconLabelText(
                                              icon: Icons.person_outline,
                                              text: viewModel.newsItems
                                                  .value[index].authorName,
                                            ),
                                          ),
                                          const Gap(Environment.size16),
                                          IconLabelDate(
                                            icon: Icons.schedule_outlined,
                                            date: viewModel.newsItems
                                                .value[index].publishedAt,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // The extra border thickness
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft:
                                          Radius.circular(Environment.size12),
                                    ),
                                    border: Border(
                                      top: BorderSide(
                                          color: Color(0xFFC4A053), width: 3),
                                      left: BorderSide(
                                          color: Color(0xFFC4A053), width: 3),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const Divider(
                      height: 1,
                      thickness: 0.5,
                    ),
                    itemCount: viewModel.newsItems.value.length,
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
