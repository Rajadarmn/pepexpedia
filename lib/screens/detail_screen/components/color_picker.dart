
import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/rounded_icon_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/product.dart';
import 'package:ui_ecommerce/size_config.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int currentSelectedColor = 0;
  int totalSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: SizedBox(
        height: getPropScreenWidth(40),
        child: Row(
          children: [
            ...List.generate(widget.product.colors.length, (index) {
              final Color color = widget.product.colors[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedColor = index;
                  });
                },
                child: ItemColorDot(
                  color: color,
                  isSelected: index == currentSelectedColor,
                ),
              );
            }),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               RoundedIconBtn(icon: Icons.remove, press: totalSelected > 1?(){
                setState(() {
                  if (totalSelected > 1) {
                    totalSelected--;
                  }
                });
               } :null),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Text("${totalSelected}",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                 ),),
               ),
               RoundedIconBtn(icon: Icons.add, press: (){
                setState(() {
                  totalSelected++;
                });
               }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemColorDot extends StatelessWidget {
  const ItemColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final bool isSelected;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: defaultDuration,
      margin: EdgeInsets.only(right: getPropScreenWidth(10)),
      padding: EdgeInsets.all(
        getPropScreenWidth(8),
      ),
      height: getPropScreenWidth(isSelected ? 35 : 25),
      width: getPropScreenWidth(isSelected ? 35 : 25),
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent,
              width: 1.5)),
    );
  }
}