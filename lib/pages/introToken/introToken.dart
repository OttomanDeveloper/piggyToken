import 'package:piggytoken/core/hooks/hooks.dart';

class IntroToken extends StatefulWidget {
  const IntroToken({super.key});

  @override
  State<IntroToken> createState() => _IntroTokenState();
}

class _IntroTokenState extends State<IntroToken> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: _mobile(size),
      tablet: _tablet(size),
      desktop: _desktop(size),
    );
  }

  Widget _whatLine(Size size) {
    return Container(
      width: size.width * 0.1,
      height: size.height * 0.003,
      color: AppColors.headerYellow,
    );
  }

  Widget _desktop(Size size) {
    return Container(
      width: size.width,
      color: AppColors.whatMainBG,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.08,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: size.width * 0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _whatLine(size),
                      SizedBox(width: size.width * 0.015),
                      Text(
                        "What is ${AppSettings.safeAndro}".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: AppColors.headerYellow,
                          fontSize: size.height * 0.027,
                        ),
                      ),
                      SizedBox(width: size.width * 0.015),
                      _whatLine(size),
                    ],
                  ),
                  SizedBox(height: size.height * 0.015),
                  Text(
                    AppText.tokenInfoTite,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.russoOne(
                      color: AppColors.white,
                      fontSize: size.height * 0.03,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    AppText.tokenInfoDescription,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      letterSpacing: 1.7,
                      fontSize: size.height * 0.02,
                      color: AppColors.white.withValues(alpha: 0.85),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                AppAsset.tokenIntro,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tablet(Size size) {
    return Container(
      width: size.width,
      color: AppColors.whatMainBG,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.08,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _whatLine(size),
              SizedBox(width: size.width * 0.03),
              Text(
                "What is ${AppSettings.safeAndro}".toUpperCase(),
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.headerYellow,
                  fontSize: size.height * 0.03,
                ),
              ),
              SizedBox(width: size.width * 0.03),
              _whatLine(size),
            ],
          ),
          SizedBox(height: size.height * 0.025),
          Text(
            AppText.tokenInfoTite,
            textAlign: TextAlign.center,
            style: GoogleFonts.russoOne(
              color: AppColors.white,
              fontSize: size.height * 0.037,
            ),
          ),
          SizedBox(height: size.height * 0.045),
          Text(
            AppText.tokenInfoDescription,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              letterSpacing: 1.7,
              fontSize: size.height * 0.03,
              color: AppColors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobile(Size size) {
    return Container(
      width: size.width,
      color: AppColors.whatMainBG,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.08,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _whatLine(size),
              SizedBox(width: size.width * 0.03),
              Text(
                "ANDRONOMICS",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.headerYellow,
                  fontSize: size.height * 0.022,
                ),
              ),
              SizedBox(width: size.width * 0.03),
              _whatLine(size),
            ],
          ),
          SizedBox(height: size.height * 0.025),
          Text(
            AppText.tokenInfoTite,
            textAlign: TextAlign.center,
            style: GoogleFonts.russoOne(
              color: AppColors.white,
              fontSize: size.height * 0.027,
            ),
          ),
          SizedBox(height: size.height * 0.023),
          Text(
            AppText.tokenInfoDescription,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              letterSpacing: 1.4,
              fontSize: size.height * 0.024,
              color: AppColors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
