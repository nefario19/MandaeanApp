// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bushido/services/common/environment.dart';
import 'package:bushido/ui/common/widgets/news_label_row.dart';
import 'package:bushido/ui/views/news/news_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsCardContent extends StatelessWidget {
  final NewsViewModel viewModel;
  final int index;

  const NewsCardContent({
    super.key,
    required this.viewModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final newsItem = viewModel.newsItems.value[index];

    return Column(
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
          padding: const EdgeInsets.all(Environment.size8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 2,
                style: Theme.of(context).textTheme.titleLarge,
                newsItem.title,
              ),
              const Gap(Environment.size16),
              Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
                newsItem.content,
              ),
              const Gap(Environment.size16),
              // Label Row
              NewsLabelRow(
                authorName: newsItem.authorName,
                publishedAt: newsItem.createdAt,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
