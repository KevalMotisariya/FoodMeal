import 'package:flutter/material.dart';

import '../Utils/Color.dart';
import '../Utils/Text.dart';

class AccountDetailView extends StatelessWidget {
  const AccountDetailView(
      {super.key, required this.iconData, required this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 335,
      decoration: BoxDecoration(
          color: AppColor.lightGrey, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(children: [
          Icon(
            iconData,
            color: AppColor.red,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: AppStyle.desText
                .copyWith(color: AppColor.black, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios),
        ]),
      ),
    );
  }
}
