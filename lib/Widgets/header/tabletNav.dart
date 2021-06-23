import 'package:piggytoken/core/hooks/hooks.dart';

class TabletNav extends StatelessWidget {
  const TabletNav({
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.013,
      ),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Text(
          "$title",
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: size.height * 0.02,
            color: AppColors.white.withOpacity(0.73),
          ),
        ),
      ),
    );
  }
}
