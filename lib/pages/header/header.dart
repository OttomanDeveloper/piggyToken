import 'package:piggytoken/core/hooks/hooks.dart';
import 'package:piggytoken/layouts/header/mobile.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: headerMobile(context),
      tablet: headerTablet(context),
      desktop: headerDesktop(context),
    );
  }
}
