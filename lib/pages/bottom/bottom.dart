import 'package:piggytoken/core/hooks/hooks.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: _mobile(size),
      tablet: _tablet(size),
      desktop: _desktop(size),
    );
  }

  Widget _desktop(Size size) {
    return Container(
      width: size.width,
      color: AppColors.parent,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.02),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
            decoration: BoxDecoration(
              color: AppColors.bottomBG1,
              border: Border.symmetric(
                horizontal: BorderSide(
                  width: size.width * 0.0003,
                  color: AppColors.white.withValues(alpha: 0.7),
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAsset.logo,
                      height: size.height * 0.05,
                    ),
                    SizedBox(width: size.width * 0.012),
                    Text(
                      AppSettings.safeAndro.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.russoOne(
                        color: AppColors.headerYellow,
                        fontSize: size.height * 0.04,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.06),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const BottomLineInfo(
                              isLeft: true,
                              title: "Disclaimer",
                            ),
                            SizedBox(height: size.height * 0.02),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.01),
                              child: Text(
                                AppText.disclaimer,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.019,
                                  color:
                                      AppColors.white.withValues(alpha: 0.87),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const BottomLineInfo(
                            isCenter: true,
                            title: "Important",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.13),
                            child: Consumer<NavProvider>(
                              builder: (context, p, _) => Column(
                                children: [
                                  SizedBox(height: size.height * 0.02),
                                  ImportantLink(
                                    title: "Home",
                                    onTap: () => p.scroll(index: 0),
                                  ),
                                  ImportantLink(
                                    title: "Team",
                                    onTap: () => p.scroll(index: 3),
                                  ),
                                  ImportantLink(
                                    title: "Roadmap",
                                    onTap: () => p.scroll(index: 2),
                                  ),
                                  ImportantLink(
                                    title: "Token Info",
                                    onTap: () => p.scroll(index: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const BottomLineInfo(
                            isLeft: true,
                            title: "Social Links",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.01),
                            child: Consumer<NavProvider>(
                              builder: (context, p, _) => Column(
                                children: [
                                  SizedBox(height: size.height * 0.01),
                                  SocialLinks(
                                    title: "Twitter",
                                    onTap: () => openLink(AppLinks.twitter),
                                  ),
                                  SocialLinks(
                                    title: "Youtube",
                                    onTap: () => openLink(AppLinks.youtube),
                                  ),
                                  SocialLinks(
                                    title: "Telegram",
                                    onTap: () => openLink(AppLinks.telegram),
                                  ),
                                  SocialLinks(
                                    title: "Discord",
                                    onTap: () => openLink(AppLinks.discord),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.017),
          Text(
            AppText.copyright,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: size.height * 0.018,
              color: AppColors.white.withValues(alpha: 0.65),
            ),
          ),
          SizedBox(height: size.height * 0.005),
        ],
      ),
    );
  }

  Widget _tablet(Size size) {
    return Container(
      width: size.width,
      color: AppColors.parent,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.02),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
            decoration: BoxDecoration(
              color: AppColors.bottomBG1,
              border: Border.symmetric(
                horizontal: BorderSide(
                  width: size.width * 0.0003,
                  color: AppColors.white.withValues(alpha: 0.7),
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAsset.logo,
                      height: size.height * 0.03,
                    ),
                    SizedBox(width: size.width * 0.02),
                    Text(
                      "SAFEANDRO",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.russoOne(
                        color: AppColors.blue,
                        fontSize: size.height * 0.026,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.032),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const BottomLineInfo(
                              isTablet: true,
                              isLeft: true,
                              title: "Disclaimer",
                            ),
                            SizedBox(height: size.height * 0.02),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.01),
                              child: Text(
                                AppText.disclaimer,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.017,
                                  color:
                                      AppColors.white.withValues(alpha: 0.87),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const BottomLineInfo(
                            isTablet: true,
                            isCenter: true,
                            title: "Important Links",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.08),
                            child: Consumer<NavProvider>(
                              builder: (context, p, _) => Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.02),
                                  ImportantLink(
                                    isTablet: true,
                                    title: "Home",
                                    onTap: () => p.scroll(index: 0),
                                  ),
                                  ImportantLink(
                                    isTablet: true,
                                    title: "Team",
                                    onTap: () => p.scroll(index: 3),
                                  ),
                                  ImportantLink(
                                    isTablet: true,
                                    title: "Roadmap",
                                    onTap: () => p.scroll(index: 2),
                                  ),
                                  ImportantLink(
                                    isTablet: true,
                                    title: "Token Info",
                                    onTap: () => p.scroll(index: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const BottomLineInfo(
                            isTablet: true,
                            isLeft: true,
                            title: "Social Links",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.02),
                            child: Consumer<NavProvider>(
                              builder: (context, p, _) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.01),
                                  SocialLinks(
                                    isTablet: true,
                                    title: "Twitter",
                                    onTap: () => openLink(AppLinks.twitter),
                                  ),
                                  SocialLinks(
                                    isTablet: true,
                                    title: "Youtube",
                                    onTap: () => openLink(AppLinks.youtube),
                                  ),
                                  SocialLinks(
                                    isTablet: true,
                                    title: "Telegram",
                                    onTap: () => openLink(AppLinks.telegram),
                                  ),
                                  SocialLinks(
                                    isTablet: true,
                                    title: "Discord",
                                    onTap: () => openLink(AppLinks.discord),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.017),
          Text(
            AppText.copyright,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: size.height * 0.0165,
              color: AppColors.white.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: size.height * 0.005),
        ],
      ),
    );
  }

  Widget _mobile(Size size) {
    return Container(
      width: size.width,
      color: AppColors.parent,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.02),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
            decoration: BoxDecoration(
              color: AppColors.bottomBG1,
              border: Border.symmetric(
                horizontal: BorderSide(
                  width: size.width * 0.001,
                  color: AppColors.white.withValues(alpha: 0.7),
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAsset.logo,
                      height: size.height * 0.025,
                    ),
                    SizedBox(width: size.width * 0.02),
                    Text(
                      "SAFEANDRO",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.russoOne(
                        color: AppColors.blue,
                        fontSize: size.height * 0.023,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const BottomLineInfo(
                              isMobile: true,
                              isLeft: true,
                              title: "Disclaimer",
                            ),
                            SizedBox(height: size.height * 0.02),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.01),
                              child: Text(
                                AppText.disclaimer,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.0155,
                                  color:
                                      AppColors.white.withValues(alpha: 0.87),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const BottomLineInfo(
                            isMobile: true,
                            isCenter: true,
                            title: "Important Links",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.045),
                            child: Consumer<NavProvider>(
                              builder: (context, p, _) => Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.02),
                                  ImportantLink(
                                    isMobile: true,
                                    title: "Home",
                                    onTap: () => p.scroll(index: 0),
                                  ),
                                  ImportantLink(
                                    isMobile: true,
                                    title: "Team",
                                    onTap: () => p.scroll(index: 3),
                                  ),
                                  ImportantLink(
                                    isMobile: true,
                                    title: "Roadmap",
                                    onTap: () => p.scroll(index: 2),
                                  ),
                                  ImportantLink(
                                    isMobile: true,
                                    title: "Token Info",
                                    onTap: () => p.scroll(index: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const BottomLineInfo(
                            isMobile: true,
                            isLeft: true,
                            title: "Social Links",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.016),
                            child: Consumer<NavProvider>(
                              builder: (context, p, _) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.01),
                                  SocialLinks(
                                    isMobile: true,
                                    title: "Twitter",
                                    onTap: () => openLink(AppLinks.twitter),
                                  ),
                                  SocialLinks(
                                    isMobile: true,
                                    title: "Youtube",
                                    onTap: () => openLink(AppLinks.youtube),
                                  ),
                                  SocialLinks(
                                    isMobile: true,
                                    title: "Telegram",
                                    onTap: () => openLink(AppLinks.telegram),
                                  ),
                                  SocialLinks(
                                    isMobile: true,
                                    title: "Discord",
                                    onTap: () => openLink(AppLinks.discord),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.017),
          Text(
            AppText.copyright,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: size.height * 0.015,
              color: AppColors.white.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: size.height * 0.006),
        ],
      ),
    );
  }
}

class BottomLineInfo extends StatelessWidget {
  const BottomLineInfo({
    super.key,
    required this.title,
    this.isLeft = false,
    this.isRight = false,
    this.isCenter = false,
    this.isMobile = false,
    this.isTablet = false,
  });

  final bool isLeft;
  final bool isRight;
  final bool isCenter;
  final String title;
  final bool isMobile;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double textSize = isMobile
        ? size.height * 0.015
        : isTablet
            ? size.height * 0.018
            : size.height * 0.023;
    double lineHeight = isMobile
        ? size.height * 0.0175
        : isTablet
            ? size.height * 0.02
            : size.height * 0.025;
    return Row(
      mainAxisAlignment: isLeft
          ? MainAxisAlignment.start
          : isRight
              ? MainAxisAlignment.end
              : isCenter
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: lineHeight,
          width: size.width * 0.003,
          decoration: BoxDecoration(
              color: AppColors.headerYellow,
              borderRadius: BorderRadius.circular(size.height * 0.01)),
        ),
        SizedBox(width: size.width * 0.01),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            fontSize: textSize,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class ImportantLink extends StatefulWidget {
  const ImportantLink({
    super.key,
    required this.title,
    required this.onTap,
    this.isMobile = false,
    this.isTablet = false,
  });

  final String title;
  final VoidCallback onTap;
  final bool isMobile;
  final bool isTablet;

  @override
  _ImportantLinkState createState() => _ImportantLinkState();
}

class _ImportantLinkState extends State<ImportantLink> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double textSize = widget.isMobile
        ? size.height * 0.0167
        : widget.isTablet
            ? size.height * 0.018
            : size.height * 0.02;
    return InkWell(
      onTap: () => widget.onTap(),
      onHover: (value) {
        if (value) {
          color = AppColors.headerYellow;
        } else {
          color = AppColors.white;
        }
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          bottom: size.height * 0.01,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '•',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: color,
                fontSize: size.height * 0.015,
              ),
            ),
            SizedBox(width: size.width * 0.01),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: color,
                fontSize: textSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialLinks extends StatefulWidget {
  const SocialLinks({
    super.key,
    required this.title,
    required this.onTap,
    this.isTablet = false,
    this.isMobile = false,
  });

  final String title;
  final VoidCallback onTap;
  final bool isTablet;
  final bool isMobile;

  @override
  _SocialLinksState createState() => _SocialLinksState();
}

class _SocialLinksState extends State<SocialLinks> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double textSize = widget.isMobile
        ? size.height * 0.0167
        : widget.isTablet
            ? size.height * 0.018
            : size.height * 0.02;
    return InkWell(
      onTap: () => widget.onTap(),
      onHover: (value) {
        if (value) {
          color = AppColors.headerYellow;
        } else {
          color = AppColors.white;
        }
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.006,
        ),
        child: Row(
          children: [
            Text(
              '•',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: color,
                fontSize: size.height * 0.015,
              ),
            ),
            SizedBox(width: size.width * 0.01),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: color,
                fontSize: textSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
