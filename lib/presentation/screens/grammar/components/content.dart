import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/presentation/widgets/app_list_title_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/grammar_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GrammarContent extends StatelessWidget {
  const GrammarContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<GrammarContentCardTitleString> grammarContentCardTitleString =
        GrammarContentCardTitleString.grammarContentCardTitleString;

    return ResponsiveRowColumn(
      layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowPadding: const EdgeInsets.all(20),
      columnPadding: const EdgeInsets.all(20),
      rowCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppListTitleCard(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            cardColor: AppColors.lightBlueColor,
            iTemCount: GrammarContentCardItemString.cardItemTitle.length,
            cardTitle: grammarContentCardTitleString[0].cardTitle,
            cardLeadingIcon: grammarContentCardTitleString[0].cardTitleIcon,
            cardItemTitle: GrammarContentCardItemString.cardItemTitle,
            cardItemLeadingIcon: GrammarContentCardItemString.cardItemIcon,
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppListTitleCard(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            cardColor: AppColors.lightBlueColor,
            iTemCount: GrammarContentCardItemString.cardItemTitle.length,
            cardTitle: grammarContentCardTitleString[1].cardTitle,
            cardLeadingIcon: grammarContentCardTitleString[1].cardTitleIcon,
            cardItemTitle: GrammarContentCardItemString.cardItemTitle,
            cardItemLeadingIcon: GrammarContentCardItemString.cardItemIcon,
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppListTitleCard(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            cardColor: AppColors.lightBlueColor,
            iTemCount: GrammarContentCardItemString.cardItemTitle.length,
            cardTitle: grammarContentCardTitleString[2].cardTitle,
            cardLeadingIcon: grammarContentCardTitleString[2].cardTitleIcon,
            cardItemTitle: GrammarContentCardItemString.cardItemTitle,
            cardItemLeadingIcon: GrammarContentCardItemString.cardItemIcon,
          ),
        ),
      ],
    );
  }
}
