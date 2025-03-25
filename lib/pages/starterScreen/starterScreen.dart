import 'package:piggytoken/core/hooks/hooks.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class StarterScreen extends StatefulWidget {
  const StarterScreen({super.key});

  @override
  _StarterScreenState createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<NavProvider>().addItemScrollListener();
    });
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return const Header();
    } else if (i == 1) {
      return const IntroToken();
    } else if (i == 2) {
      return const RoadMap();
    } else if (i == 3) {
      return const TeamMember();
    } else if (i == 4) {
      return const Bottom();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: AppColors.parent,
      ),
      title: AppSettings.appName,
      home: Scaffold(
        backgroundColor: AppColors.whatMainBG,
        body: SafeArea(
          child: RawScrollbar(
            thickness: 5.0,
            controller: context.read<NavProvider>().scrollController,
            child: ScrollablePositionedList.builder(
              itemCount: 5,
              initialScrollIndex: 0,
              itemScrollController:
                  context.read<NavProvider>().itemScrollController,
              itemPositionsListener:
                  context.read<NavProvider>().itemPositionsListener,
              physics: const AlwaysScrollableScrollPhysics(),
              addAutomaticKeepAlives: true,
              itemBuilder: (BuildContext context, int index) {
                return sectionWidget(index);
              },
            ),
          ),
        ),
        floatingActionButton: Consumer<NavProvider>(
          builder: (context, pro, _) => pro.isFloat
              ? FloatingActionButton(
                  onPressed: () => pro.scroll(index: 0),
                  backgroundColor: AppColors.headerYellow,
                  child: const Icon(
                    Icons.keyboard_arrow_up_outlined,
                    color: AppColors.black,
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
