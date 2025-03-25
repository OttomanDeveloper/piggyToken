import 'package:piggytoken/core/hooks/hooks.dart';

Widget headerDesktop(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  double buttonWidth = size.width * 0.003;
  var onClick = context.read<NavProvider>();
  return Container(
    width: size.width,
    height: size.height,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(AppAsset.space1),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.015),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: size.width * 0.04),
            Image.asset(
              AppAsset.logo,
              fit: BoxFit.cover,
              height: size.height * 0.06,
            ),
            SizedBox(width: size.width * 0.001),
            Text(
              AppSettings.safeAndro.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.russoOne(
                color: AppColors.white,
                fontSize: size.height * 0.025,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NavButton(
                  title: "Home",
                  onTap: () => onClick.scroll(index: 0),
                ),
                SizedBox(width: buttonWidth),
                NavButton(
                  title: "Token Info",
                  onTap: () => onClick.scroll(index: 2),
                ),
                SizedBox(width: buttonWidth),
                NavButton(
                  title: "Roadmap",
                  onTap: () => onClick.scroll(index: 3),
                ),
                SizedBox(width: buttonWidth),
                NavButton(
                  title: "Team",
                  onTap: () => onClick.scroll(index: 4),
                ),
                SizedBox(width: size.width * 0.014),
                NavButton(
                  isBuy: true,
                  title: "Buy Now",
                  onTap: () {
                    openLink(AppLinks.buyNow);
                  },
                ),
              ],
            ),
            SizedBox(width: size.width * 0.02),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: size.width * 0.07),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: size.height * 0.03,
                    color: AppColors.white.withValues(alpha: 0.8),
                  ),
                ),
                SizedBox(height: size.height * 0.002),
                Text(
                  AppSettings.safeAndro.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.russoOne(
                    color: AppColors.white,
                    fontSize: size.height * 0.06,
                  ),
                ),
                SizedBox(height: size.height * 0.012),
                Padding(
                  padding: EdgeInsets.only(right: size.width * 0.4),
                  child: Text(
                    AppText.home,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.roboto(
                      fontSize: size.height * 0.022,
                      letterSpacing: size.width * 0.0005,
                      color: AppColors.white.withValues(alpha: 0.8),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.022),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.018,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              size.height * 0.01,
                            ),
                            border: Border.all(
                              color: AppColors.headerYellow,
                            )),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.downloading_outlined,
                              size: size.height * 0.022,
                              color: AppColors.headerYellow,
                            ),
                            SizedBox(width: size.width * 0.007),
                            Text(
                              "Whitepaper".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: AppColors.headerYellow,
                                fontSize: size.height * 0.018,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.012),
                    InkWell(
                      onTap: () {
                        openLink(AppLinks.buyNow);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.018,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.headerYellow,
                          borderRadius:
                              BorderRadius.circular(size.height * 0.01),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: size.height * 0.022,
                            ),
                            SizedBox(width: size.width * 0.007),
                            Text(
                              "Buy Now",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: size.height * 0.018,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.035),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.005,
                    horizontal: size.width * 0.005,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(size.height * 0.02),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width * 0.005),
                      Text(
                        "Social Links:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontSize: size.height * 0.018,
                          color: AppColors.white.withValues(alpha: 0.9),
                        ),
                      ),
                      SizedBox(width: size.width * 0.01),
                      SocialIcons(
                        asset: AppAsset.youtube,
                        onTap: () => openLink(AppLinks.youtube),
                      ),
                      SocialIcons(
                        asset: AppAsset.discord,
                        onTap: () => openLink(AppLinks.discord),
                      ),
                      SocialIcons(
                        asset: AppAsset.telegram,
                        onTap: () => openLink(AppLinks.telegram),
                      ),
                      SocialIcons(
                        asset: AppAsset.twitter,
                        onTap: () => openLink(AppLinks.twitter),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.035),
                Text(
                  "Be aware of scammers, the ${AppSettings.appName} contract:",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: AppColors.white,
                    fontSize: size.height * 0.019,
                  ),
                ),
                SizedBox(height: size.height * 0.008),
                const ContractText(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
