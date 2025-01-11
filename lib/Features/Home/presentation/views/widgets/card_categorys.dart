import 'package:flutter/material.dart';
import 'package:last_8/core/style/styles.dart';

class CardCategorys extends StatelessWidget {
  const CardCategorys({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });
  final String text;
  final String image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Container(
          width: double.infinity,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(148, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(text, style: Styles.textstyle20),
                Spacer(),
                Image.asset(image, height: 65),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
