import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/assets_manager.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/fontwieght_manager.dart';
import 'package:movies_app/core/resources/textstyle_manager.dart';
import 'package:movies_app/core/widget/elevetedbutton.dart';

@RoutePage()
class OnBordingScreen extends StatefulWidget {
  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  List<Map<String, String>> onboardingData = [
    {
      "image": AssetsManager.onBording1,
      "title": "Find Your Next Favorite Movie Here",
      "description":
          "Get access to a huge library of movies to suit all tastes. You will surely like it",
    },
    {
      "image": AssetsManager.onBording2,
      "title": "Discover Movies",
      "description":
          "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
    },
    {
      "image": AssetsManager.onBording3,
      "title": "Explore All Genres",
      "description":
          "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
    },
    {
      "image": AssetsManager.onBording4,
      "title": "Create Watchlists",
      "description":
          "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
    },
    {
      "image": AssetsManager.onBording5,
      "title": "Rate, Review, and Learn",
      "description":
          "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
    },
    {"image": AssetsManager.onBording6, "title": "Start Watching Now"},
  ];

  void _nextPage() {
    if (currentIndex == onboardingData.length - 1) {
      print("Go to Home Screen");
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  double _fontSize(BuildContext context, double base) {
    final width = MediaQuery.of(context).size.width;
    return (base * width / 375).clamp(base * 0.8, base * 1.3);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  bool showBottomSheet = index > 0;
                  bool showBottomBack = index > 1;

                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        onboardingData[index]["image"]!,
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                ColorManager.primaryblack.withOpacity(0.4),
                                ColorManager.primaryblack.withOpacity(0.8),
                                ColorManager.primaryblack,
                              ],
                              stops: const [0.0, 0.3, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                      ),
                      if (!showBottomSheet)
                        Positioned(
                          bottom: screenHeight * 0.05,
                          left: screenWidth * 0.05,
                          right: screenWidth * 0.05,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                onboardingData[index]["title"]!,
                                style: TextStyle(
                                  color: ColorManager.primarywhite,
                                  fontWeight: FontWeightManager.fontLightWeight,
                                  fontSize: _fontSize(context, 33),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              if (onboardingData[index]["description"] != null)
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: screenHeight * 0.012,
                                  ),
                                  child: Text(
                                    onboardingData[index]["description"]!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: _fontSize(context, 18),
                                      color: ColorManager.primarywhite
                                          .withOpacity(0.85),
                                    ),
                                  ),
                                ),
                              SizedBox(height: screenHeight * 0.025),
                              Custumelevatedbutton(
                                onPressed: _nextPage,
                                backgroundcolor: ColorManager.primaryYello,
                                child: Text(
                                  "Explore Now",
                                  style: buttonStyle(
                                    color: ColorManager.primaryblack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (showBottomSheet)
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.06,
                              vertical: screenHeight * 0.035,
                            ),
                            decoration: BoxDecoration(
                              color: ColorManager.primaryblack,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  onboardingData[index]["title"]!,
                                  style: TextStyle(
                                    color: ColorManager.primarywhite,
                                    fontSize: _fontSize(context, 22),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: screenHeight * 0.012),
                                if (onboardingData[index]["description"] !=
                                    null)
                                  Text(
                                    onboardingData[index]["description"]!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: _fontSize(context, 18),
                                      color: ColorManager.primarywhite,
                                    ),
                                  ),
                                SizedBox(height: screenHeight * 0.025),
                                Custumelevatedbutton(
                                  onPressed: _nextPage,
                                  backgroundcolor: ColorManager.primaryYello,
                                  child: Text(
                                    currentIndex == onboardingData.length - 1
                                        ? "Finish"
                                        : "Next",
                                    style: buttonStyle(
                                      color: ColorManager.primaryblack,
                                    ),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.012),
                                if (showBottomBack)
                                  Custumelevatedbutton(
                                    borderside: ColorManager.primaryYello,
                                    onPressed: _previousPage,
                                    backgroundcolor: ColorManager.primaryblack,
                                    child: Text(
                                      "Back",
                                      style: buttonStyle(
                                        color: ColorManager.primaryYello,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
