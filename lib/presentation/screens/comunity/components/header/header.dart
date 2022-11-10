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
        gradient: const LinearGradient(
            colors: [
              Colors.redAccent,
              Color.fromARGB(1, 248, 187, 208),
            ],
            stops: [
              0.0,
              1.0
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            tileMode: TileMode.repeated),
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
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  communityHeaderData.description,
                  style: const TextStyle(fontSize: 16),
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
