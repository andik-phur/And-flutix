part of "widgets.dart";

class SelectsbleBox extends StatelessWidget {
  final bool isSelected;
  final bool isEnable;
  final double width;
  final double height;
  final String text;
  final Function onTab;
  final TextStyle textStyle;

  SelectsbleBox(this.text,
      {this.isSelected = false,
      this.isEnable = true,
      this.width = 144,
      this.height = 60,
      this.onTab,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTab != null) {
            onTab();
          }
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: (isEnable)
                  ? Color(0xFFE4E4E4)
                  : isSelected
                      ? accentColor2
                      : Colors.transparent,
              border: Border.all(
                  color: (isEnable)
                      ? Color(0xFFE4E4E4)
                      : isSelected
                          ? Colors.transparent
                          : Color(0xFFE4E4E4))),
          child: Center(
            child: Text(
              text ?? "none",
              style: (textStyle ?? blackTextFont)
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ));
  }
}
