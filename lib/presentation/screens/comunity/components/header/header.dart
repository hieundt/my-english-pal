import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/header/data.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CommunityHeader extends StatelessWidget {
  final CommunityHeaderData communityHeaderData;
  const CommunityHeader({super.key, required this.communityHeaderData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: MediaQuery.of(context).size.width,
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
            child: Column(
              children: [
                Text(
                  communityHeaderData.title,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w900,
                    fontSize: 57,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  communityHeaderData.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Image.asset(
              alignment: Alignment.centerLeft,
              communityHeaderData.image,
            ),
          ),
        ],
      ),
    );
  }
}
