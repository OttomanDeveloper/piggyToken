import 'package:piggytoken/core/hooks/hooks.dart';

class TeamMember extends StatefulWidget {
  const TeamMember({super.key});

  @override
  _TeamMemberState createState() => _TeamMemberState();
}

class _TeamMemberState extends State<TeamMember> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.teamBG,
      width: size.width,
      child: Responsive(
        mobile: _mobile(size),
        tablet: _tablet(size),
        desktop: _desktop(size),
      ),
    );
  }

  Widget _desktop(Size size) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            teamLiner(size),
            SizedBox(width: size.width * 0.02),
            Text(
              'OUR CORE TEAM MEMBERS'.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: AppColors.headerYellow,
                fontSize: size.height * 0.025,
              ),
            ),
            SizedBox(width: size.width * 0.02),
            teamLiner(size),
          ],
        ),
        SizedBox(height: size.height * 0.015),
        Text(
          "OUR TEAM".toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.russoOne(
            color: AppColors.white,
            fontSize: size.height * 0.03,
          ),
        ),
        SizedBox(height: size.height * 0.027),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeamCard(
              name: AppText.teamName[0],
              specialist: AppText.teamRole[0],
              asset: AppAsset.avatar1,
            ),
            SizedBox(width: size.width * 0.009),
            TeamCard(
              name: AppText.teamName[1],
              specialist: AppText.teamRole[1],
              asset: AppAsset.avatar2,
            ),
            SizedBox(width: size.width * 0.009),
            TeamCard(
              name: AppText.teamName[2],
              specialist: AppText.teamRole[2],
              asset: AppAsset.avatar3,
            ),
          ],
        ),
        SizedBox(height: size.height * 0.03),
      ],
    );
  }

  Widget _tablet(Size size) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            teamLiner(size),
            SizedBox(width: size.width * 0.02),
            Text(
              'OUR CORE TEAM MEMBERS'.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: AppColors.teamText,
                fontSize: size.height * 0.025,
              ),
            ),
            SizedBox(width: size.width * 0.02),
            teamLiner(size),
          ],
        ),
        SizedBox(height: size.height * 0.015),
        Text(
          "OUR TEAM".toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.russoOne(
            color: AppColors.white,
            fontSize: size.height * 0.027,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamCard(
              isTablet: true,
              name: AppText.teamName[0],
              specialist: AppText.teamRole[0],
              asset: AppAsset.avatar1,
            ),
            TeamCard(
              isTablet: true,
              name: AppText.teamName[1],
              specialist: AppText.teamRole[1],
              asset: AppAsset.avatar2,
            ),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        TeamCard(
          isTablet: true,
          name: AppText.teamName[2],
          specialist: AppText.teamRole[2],
          asset: AppAsset.avatar3,
        ),
        SizedBox(height: size.height * 0.03),
      ],
    );
  }

  Widget _mobile(Size size) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            teamLiner(size),
            SizedBox(width: size.width * 0.02),
            Text(
              'OUR CORE TEAM MEMBERS'.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: AppColors.teamText,
                fontSize: size.height * 0.019,
              ),
            ),
            SizedBox(width: size.width * 0.02),
            teamLiner(size),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        Text(
          "OUR TEAM".toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.russoOne(
            color: AppColors.white,
            fontSize: size.height * 0.023,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        TeamCard(
          isMobile: true,
          name: AppText.teamName[0],
          specialist: AppText.teamRole[0],
          asset: AppAsset.avatar1,
        ),
        SizedBox(height: size.height * 0.012),
        TeamCard(
          isMobile: true,
          name: AppText.teamName[1],
          specialist: AppText.teamRole[1],
          asset: AppAsset.avatar2,
        ),
        SizedBox(height: size.height * 0.012),
        TeamCard(
          isMobile: true,
          name: AppText.teamName[2],
          specialist: AppText.teamRole[2],
          asset: AppAsset.avatar3,
        ),
        SizedBox(height: size.height * 0.012),
      ],
    );
  }

  Widget teamLiner(Size size) {
    return Container(
      height: size.height * 0.002,
      width: size.width * 0.09,
      color: AppColors.headerYellow,
    );
  }
}

class TeamCard extends StatefulWidget {
  const TeamCard({
    super.key,
    required this.name,
    required this.specialist,
    required this.asset,
    this.isMobile = false,
    this.isTablet = false,
  });

  final String name;
  final String asset;
  final String specialist;
  final bool isMobile;
  final bool isTablet;

  @override
  _TeamCardState createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double cardWidth = widget.isMobile
        ? size.width * 0.6
        : widget.isTablet
            ? size.width * 0.425
            : size.width * 0.165;
    double headerGreenLine = widget.isMobile
        ? size.height * 0.007
        : widget.isTablet
            ? size.height * 0.012
            : size.height * 0.015;
    double avatarRadius = widget.isMobile
        ? size.height * 0.0435
        : widget.isTablet
            ? size.height * 0.0672
            : size.height * 0.063;
    return Material(
      elevation: 10.0,
      color: AppColors.parent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          if (value) {
            _isHover = true;
          } else {
            _isHover = false;
          }
          setState(() {});
        },
        child: Container(
          width: cardWidth,
          decoration: BoxDecoration(
            border: Border.all(
              color: _isHover ? AppColors.headerYellow : AppColors.parent,
            ),
            gradient: const LinearGradient(
              colors: [
                AppColors.teamCard1,
                AppColors.teamCard2,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(size.height * 0.015),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: size.width,
                height: headerGreenLine,
                color: AppColors.headerYellow,
              ),
              SizedBox(height: size.height * 0.01),
              CircleAvatar(
                radius: avatarRadius,
                backgroundColor: AppColors.white,
                child: SvgPicture.asset(
                  widget.asset,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: size.height * 0.015),
              Text(
                widget.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.headerYellow,
                  fontWeight: FontWeight.w600,
                  fontSize: size.height * 0.019,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: size.width * 0.0045),
                  Expanded(child: teamLine(size)),
                  SizedBox(width: size.width * 0.0045),
                  Text(
                    widget.specialist,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: size.height * 0.0163,
                      color: AppColors.teamSpecialistText,
                    ),
                  ),
                  SizedBox(width: size.width * 0.0045),
                  Expanded(child: teamLine(size)),
                  SizedBox(width: size.width * 0.0045),
                ],
              ),
              SizedBox(height: size.height * 0.006),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppAsset.instaSVG,
                      height: size.height * 0.055,
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppAsset.teleSVG,
                      height: size.height * 0.055,
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppAsset.faceSVG,
                      height: size.height * 0.055,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.003),
            ],
          ),
        ),
      ),
    );
  }

  Widget teamLine(Size size) {
    return Container(
      height: size.height * 0.0015,
      color: AppColors.headerYellow.withOpacity(0.65),
    );
  }
}
