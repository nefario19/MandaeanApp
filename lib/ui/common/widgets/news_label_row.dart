import 'package:bushido/services/common/environment.dart';
import 'package:bushido/ui/common/ui_helpers.dart';
import 'package:bushido/ui/common/widgets/icon_label_date.dart';
import 'package:bushido/ui/common/widgets/icon_label_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsLabelRow extends StatelessWidget {
  final String authorName;
  final DateTime publishedAt;

  const NewsLabelRow({
    super.key,
    required this.authorName,
    required this.publishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IconLabelText(
            icon: Icons.person_outline,
            text: L(context).authorLabel(authorName),
          ),
        ),
        const Gap(Environment.size16),
        IconLabelDate(
          icon: Icons.schedule_outlined,
          date: publishedAt,
        ),
      ],
    );
  }
}
