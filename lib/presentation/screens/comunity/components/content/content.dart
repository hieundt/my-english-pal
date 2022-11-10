import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/content/data.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CommunityContent extends StatelessWidget {
  final CommunityContentData communityContentData;
  const CommunityContent({super.key, required this.communityContentData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: MediaQuery.of(context).size.width / 1.2,
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.start,
        rowPadding: const EdgeInsets.all(30.0),
        columnPadding: const EdgeInsets.all(30.0),
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Image.asset(
              alignment: Alignment.centerLeft,
              communityContentData.image,
            ),
          ),
          const ResponsiveRowColumnItem(
            child: SizedBox(width: 10.0),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Column(
              children: [
                Text(
                  communityContentData.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  communityContentData.description,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
