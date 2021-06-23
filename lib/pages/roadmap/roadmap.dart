import 'package:piggytoken/core/hooks/hooks.dart';

class RoadMap extends StatelessWidget {
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
      color: AppColors.roadMapBG,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _line(size),
              SizedBox(width: size.width * 0.015),
              Text(
                "OUR VISION".toUpperCase(),
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.headerYellow,
                  fontSize: size.height * 0.025,
                ),
              ),
              SizedBox(width: size.width * 0.015),
              _line(size),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "THE ROADMAP".toUpperCase(),
            textAlign: TextAlign.center,
            style: GoogleFonts.russoOne(
              color: AppColors.white,
              fontSize: size.height * 0.03,
            ),
          ),
          SizedBox(height: size.height * 0.06),
          Container(
            height: size.height * 0.7,
            padding: EdgeInsets.only(
              left: size.width * 0.04,
              right: size.width * 0.06,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    AppAsset.galaxySVG,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.08,
                    ),
                    child: Column(
                      children: [
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoadMapSteps(
                          quarter: "",
                          titleColor: Colors.white,
                          title: "Comming Soon",
                          description: "Comming Soon",
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
    );
  }

  Widget _tablet(Size size) {
    return Container(
      width: size.width,
      color: AppColors.roadMapBG,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _line(size),
              SizedBox(width: size.width * 0.03),
              Text(
                "OUR VISION",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.teamText,
                  fontSize: size.height * 0.022,
                ),
              ),
              SizedBox(width: size.width * 0.03),
              _line(size),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "THE ROADMAP".toUpperCase(),
            textAlign: TextAlign.center,
            style: GoogleFonts.russoOne(
              color: AppColors.white,
              fontSize: size.height * 0.025,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            height: size.height * 0.7,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  AppAsset.galaxySVG,
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0x00222020),
                        const Color(0x83222020),
                        const Color(0x83222020),
                        const Color(0x00222020),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  child: RoadMapSteps(
                    isTablet: true,
                    quarter: "Q1 2021",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.85),
                  ),
                ),
                Positioned(
                  top: size.height * 0.17,
                  child: RoadMapSteps(
                    isTablet: true,
                    quarter: "Q2 2021",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.77),
                  ),
                ),
                Positioned(
                  top: size.height * 0.34,
                  child: RoadMapSteps(
                    isTablet: true,
                    quarter: "Q3 2022",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.72),
                  ),
                ),
                Positioned(
                  top: size.height * 0.51,
                  child: RoadMapSteps(
                    isTablet: true,
                    quarter: "Q4 2022",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.67),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobile(Size size) {
    return Container(
      width: size.width,
      color: AppColors.roadMapBG,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _line(size),
              SizedBox(width: size.width * 0.03),
              Text(
                "OUR VISION",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.teamText,
                  fontSize: size.height * 0.022,
                ),
              ),
              SizedBox(width: size.width * 0.03),
              _line(size),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "THE ROADMAP".toUpperCase(),
            textAlign: TextAlign.center,
            style: GoogleFonts.russoOne(
              color: AppColors.white,
              fontSize: size.height * 0.025,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            height: size.height * 0.7,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  AppAsset.galaxySVG,
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0x00222020),
                        const Color(0x83222020),
                        const Color(0x83222020),
                        const Color(0x00222020),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  left: size.width * 0.08,
                  child: RoadMapSteps(
                    isMobile: true,
                    quarter: "Q1 2021",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.85),
                  ),
                ),
                Positioned(
                  top: size.height * 0.17,
                  left: size.width * 0.08,
                  child: RoadMapSteps(
                    isMobile: true,
                    quarter: "Q2 2021",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.77),
                  ),
                ),
                Positioned(
                  top: size.height * 0.34,
                  left: size.width * 0.08,
                  child: RoadMapSteps(
                    isMobile: true,
                    quarter: "Q3 2022",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.72),
                  ),
                ),
                Positioned(
                  top: size.height * 0.51,
                  left: size.width * 0.08,
                  child: RoadMapSteps(
                    isMobile: true,
                    quarter: "Q4 2022",
                    title: "Releasing Soon ...",
                    description: "",
                    titleColor: AppColors.white.withOpacity(0.67),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _line(Size size) {
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.002,
      color: AppColors.headerYellow,
    );
  }
}

class RoadMapSteps extends StatelessWidget {
  const RoadMapSteps({
    required this.title,
    required this.quarter,
    required this.titleColor,
    required this.description,
    this.isMobile = false,
    this.isTablet = false,
  });

  final String title;
  final String quarter;
  final Color titleColor;
  final String description;
  final bool isMobile;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: size.height * 0.009),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(size.height * 0.006),
            ),
          ],
        ),
        SizedBox(width: size.width * 0.01),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title",
              textAlign: TextAlign.left,
              style: GoogleFonts.roboto(
                color: titleColor,
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.024,
              ),
            ),
            SizedBox(height: size.height * 0.005),
            Text(
              "$description",
              textAlign: TextAlign.left,
              style: GoogleFonts.roboto(
                fontSize: size.height * 0.018,
                color: AppColors.white.withOpacity(0.82),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
