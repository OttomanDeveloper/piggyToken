import 'package:piggytoken/core/hooks/hooks.dart';

Widget headerTablet(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  var onClick = context.read<NavProvider>();
  return Container(
    width: size.width,
    height: size.height,
    decoration: BoxDecoration(
      color: AppColors.parent,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(AppAsset.space1),
      ),
    ),
    child: Scaffold(
      key: onClick.globalKey,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.parent,
      drawerScrimColor: AppColors.parent,
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.075),
            GestureDetector(
              onTap: () {
                if (onClick.globalKey.currentState!.isDrawerOpen) {
                  onClick.globalKey.currentState!.openEndDrawer();
                } else {
                  onClick.globalKey.currentState!.openDrawer();
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.clear,
                    color: AppColors.white,
                    size: size.height * 0.027,
                  ),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    "Close",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: size.height * 0.024,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.027),
            TabletNav(
              onTap: () {
                if (onClick.globalKey.currentState!.isDrawerOpen) {
                  onClick.globalKey.currentState!.openEndDrawer();
                  onClick.scroll(index: 0);
                }
              },
              title: "Home",
            ),
            TabletNav(
              onTap: () {
                if (onClick.globalKey.currentState!.isDrawerOpen) {
                  onClick.globalKey.currentState!.openEndDrawer();
                  onClick.scroll(index: 3);
                }
              },
              title: "Team",
            ),
            TabletNav(
              onTap: () {
                if (onClick.globalKey.currentState!.isDrawerOpen) {
                  onClick.globalKey.currentState!.openEndDrawer();
                  onClick.scroll(index: 2);
                }
              },
              title: "Roadmap",
            ),
            TabletNav(
              onTap: () {
                if (onClick.globalKey.currentState!.isDrawerOpen) {
                  onClick.globalKey.currentState!.openEndDrawer();
                  onClick.scroll(index: 1);
                }
              },
              title: "Token Info",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: AppColors.parent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: size.width * 0.04),
            Image.asset(
              AppAsset.logo,
              fit: BoxFit.cover,
              height: size.height * 0.022,
            ),
            SizedBox(width: size.width * 0.015),
            Text(
              "${AppSettings.safeAndro}".toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.russoOne(
                color: AppColors.blue,
                fontSize: size.height * 0.02,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              if (onClick.globalKey.currentState!.isDrawerOpen) {
                onClick.globalKey.currentState!.openEndDrawer();
              } else {
                onClick.globalKey.currentState!.openDrawer();
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_outlined,
                  size: size.height * 0.025,
                  color: AppColors.white.withOpacity(0.75),
                ),
                SizedBox(width: size.width * 0.006),
                Text(
                  "Menu",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: size.height * 0.019,
                    color: AppColors.white.withOpacity(0.72),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: size.width * 0.04),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: size.height * 0.025,
              color: AppColors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(height: size.height * 0.009),
          Text(
            "${AppSettings.safeAndro}".toUpperCase(),
            textAlign: TextAlign.center,
            style: GoogleFonts.russoOne(
              color: AppColors.white,
              fontSize: size.height * 0.052,
            ),
          ),
          SizedBox(height: size.height * 0.012),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
            ),
            child: Text(
              "${AppText.home}",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: size.height * 0.025,
                color: AppColors.white.withOpacity(0.8),
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
                    vertical: size.height * 0.013,
                    horizontal: size.width * 0.02,
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
                      SizedBox(width: size.width * 0.01),
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
              SizedBox(width: size.width * 0.03),
              InkWell(
                onTap: () {
                  openLink(AppLinks.buyNow);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.014,
                    horizontal: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.headerYellow,
                    borderRadius: BorderRadius.circular(size.height * 0.01),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: size.height * 0.022,
                      ),
                      SizedBox(width: size.width * 0.015),
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
          SizedBox(height: size.height * 0.03),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.02,
            ),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.1),
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
                    color: AppColors.white.withOpacity(0.9),
                  ),
                ),
                SizedBox(width: size.width * 0.012),
                SocialIcons(
                  asset: AppAsset.youtube,
                  onTap: () => openLink(AppLinks.youtube),
                ),
                SizedBox(width: size.width * 0.008),
                SocialIcons(
                  asset: AppAsset.discord,
                  onTap: () => openLink(AppLinks.discord),
                ),
                SizedBox(width: size.width * 0.008),
                SocialIcons(
                  asset: AppAsset.telegram,
                  onTap: () => openLink(AppLinks.telegram),
                ),
                SizedBox(width: size.width * 0.008),
                SocialIcons(
                  asset: AppAsset.twitter,
                  onTap: () => openLink(AppLinks.twitter),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
