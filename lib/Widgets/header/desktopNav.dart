import 'package:piggytoken/core/hooks/hooks.dart';

class NavButton extends StatefulWidget {
  final String title;
  final bool isBuy;
  final VoidCallback onTap;

  const NavButton({
    super.key,
    required this.title,
    this.isBuy = false,
    required this.onTap,
  });

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  Color bottomColor = AppColors.parent;
  Color textColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Button Height and Width Padding
    double btnWidth = size.width * 0.009;
    double btnHeight = size.height * 0.006;
    return widget.isBuy
        ? InkWell(
            onTap: () => widget.onTap(),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: btnHeight,
                horizontal: btnWidth,
              ),
              decoration: BoxDecoration(
                color: AppColors.headerYellow,
                borderRadius: BorderRadius.circular(size.height * 0.01),
              ),
              child: text(size),
            ),
          )
        : InkWell(
            onTap: () => widget.onTap(),
            onHover: (value) {
              setState(() {
                if (value) {
                  textColor = AppColors.black;
                  bottomColor = AppColors.headerYellow;
                } else {
                  textColor = AppColors.white;
                  bottomColor = AppColors.parent;
                }
              });
            },
            hoverColor: Colors.orange,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: btnHeight,
                horizontal: btnWidth,
              ),
              decoration: BoxDecoration(
                color: bottomColor,
                borderRadius: BorderRadius.circular(size.height * 0.01),
              ),
              child: text(size),
            ),
          );
  }

  Widget text(Size size) {
    return Text(
      "${widget.title}",
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: widget.isBuy ? AppColors.black : textColor,
        fontSize: size.height * 0.016,
      ),
    );
  }
}
