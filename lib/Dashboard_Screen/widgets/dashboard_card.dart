import 'package:flutter/material.dart';

import '../../Const_File.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key,
    required this.count,
    required this.cardHeading,
    required this.cardImage,
    required this.cardColor,
    required this.onPressed
  }) : super(key: key);

  final int count;
  final String cardHeading;
  final String cardImage;
  final Color cardColor;

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Card(
            elevation: 0,
            color: cardColor,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              height: 159,
              width: 260,
              decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 230,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           cardHeading,
                            style:
                            textStyle(
                                TextColor: HeadingTextColor,
                                TextSize: TextSizeSmall,
                                fontWeight: fontWeightmediumextra
                            ),
                          ),
                          Text(
                            count.toString(),
                            style:
                            textStyle(
                                TextColor: HeadingTextColor,
                                TextSize: cardCounterTextSize,
                                fontWeight: fontWeightmediumextra
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              onPressed;
                            },
                            child: Text(
                              "View Entire List",
                              style:   textStyle(
                                  TextColor: HeadingTextColor,
                                  TextSize: TextSizeextraSmall,
                                  fontWeight: fontWeightmediumextra
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 10, 10, 2),
          child: SizedBox(
            width: 162,
            child: Image.asset(
              cardImage,
              height: 162,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            width: 250,
            child: Image.asset(
              Groupimg, // this image is constant
              height: 180,
              width: 200,
            ),
          ),
        ),
      ],
    );
  }
}

