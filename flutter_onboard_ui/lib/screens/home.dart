
import 'package:flutter/material.dart';
import 'package:onboarding/models/onbard.dart';
import 'package:onboarding/widgets/onboard_content.dart';
import 'package:onboarding/widgets/page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _pageIndex = 0;
  final List<Onboard> onboardList = [
    Onboard(
      image: 'assets/images/onboard-one.png',
      title: 'Welcome to Surf.',
      subTitle: 'I provide essential stuff for your ui designs every tuesday!',
    ),
    Onboard(
      image: 'assets/images/onboard-three.png',
      title: 'Design Template uploads Every Tuesday!',
      subTitle: 'Make sure to take a look my uplab profile every tuesday',
    ),
    Onboard(
      image: 'assets/images/onboard-two.png',
      title: 'Download now!',
      subTitle:
          'You can follow me if you wanted comment on any to get some freebies',
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardList.length,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemBuilder: (content, index) => OnboardingContent(
                        image: onboardList[index].image,
                        title: onboardList[index].title,
                        subTitle: onboardList[index].subTitle,
                      ))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  onboardList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(4),
                        child: PageIndicator(isActive: index == _pageIndex),
                      )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (state) => Colors.black.withOpacity(0.2))),
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  child: Text(
                    "${_pageIndex == onboardList.length - 1 ? 'Done' : 'Next'}"
                        .toUpperCase(),
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
