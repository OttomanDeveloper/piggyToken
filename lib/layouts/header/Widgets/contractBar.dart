import 'package:piggytoken/core/hooks/hooks.dart';

class ContractText extends StatefulWidget {
  @override
  _ContractTextState createState() => _ContractTextState();
}

class _ContractTextState extends State<ContractText> {
  Color bgColor = AppColors.white.withOpacity(0.15);
  Color txtColor = AppColors.white;

  Color bgColorBTN = AppColors.white.withOpacity(0.15);
  Color txtColorBTN = AppColors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.01,
            vertical: size.height * 0.0045,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.height * 0.01),
            color: bgColor,
          ),
          child: InkWell(
            onTap: () => openLink(AppLinks.contractLink),
            onHover: (value) {
              setState(() {
                if (value) {
                  txtColor = AppColors.headerYellow;
                  bgColor = AppColors.black.withOpacity(0.2);
                } else {
                  txtColor = AppColors.white;
                  bgColor = AppColors.white.withOpacity(0.15);
                }
              });
            },
            child: Text(
              "${AppText.contractAddress} →",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: txtColor,
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.015,
              ),
            ),
          ),
        ),
        SizedBox(width: size.width * 0.007),
        Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: AppText.contractAddress));
              },
              onHover: (value) {
                setState(() {
                  if (value) {
                    txtColorBTN = AppColors.headerYellow;
                    bgColorBTN = AppColors.white.withOpacity(0.35);
                  } else {
                    txtColorBTN = AppColors.white;
                    bgColorBTN = AppColors.white.withOpacity(0.15);
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.all(size.height * 0.007),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColorBTN,
                ),
                child: Icon(
                  Icons.content_copy_outlined,
                  color: txtColorBTN,
                  size: size.height * 0.02,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
