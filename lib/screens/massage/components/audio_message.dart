import 'package:flutter/material.dart';

import '../../../constants.dart';

class AudioMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2.5),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? kPrimaryColor.withOpacity(0.1)
            : kContentColorDarkTheme.withOpacity(0.08),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: kPrimaryColor,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.4),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: kPrimaryColor, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Theme.of(context).textTheme.bodyText1.color),
          ),
        ],
      ),
    );
  }
}
