import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/pages/home/components/carousel_items.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

class Carousel extends StatefulWidget {
  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselSliderController _carouselController = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .5 : .70);
    return Container(
      height: carouselContainerHeight+32,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                scrollPhysics: AlwaysScrollableScrollPhysics(),
                height: carouselContainerHeight,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: List.generate(
                carouselItems.length,
                (index) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      constraints: BoxConstraints(
                        minHeight: carouselContainerHeight,
                      ),
                      child: ScreenHelper(
                        // Responsive views
                        desktop: _buildDesktop(
                          context,
                          carouselItems[index].text!,
                          carouselItems[index].image!,
                        ),
                        tablet: _buildTablet(
                          context,
                          carouselItems[index].text!,
                          carouselItems[index].image!,
                        ),
                        mobile: _buildMobile(
                          context,
                          carouselItems[index].text!,
                          carouselItems[index].image!,
                        ),
                      ),
                    );
                  },
                ),
              ).toList(),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8.0,
            children: List.generate(carouselItems.length, (index) {
              const int visibleCount = 2;
              int halfWindow = visibleCount ~/ 2;

              int start = (_currentIndex - halfWindow).clamp(0, carouselItems.length - visibleCount);
              int end = (start + visibleCount).clamp(0, carouselItems.length);

              bool isInWindow = index >= start && index < end;
              bool isActive = index == _currentIndex;

              double width = isActive ? 32 : (isInWindow ? 12 : 6);
              double height = isInWindow ? 12 : 6;
              Color color = isActive
                  ? kPrimaryColor
                  : (isInWindow ? Colors.grey : Colors.grey.withOpacity(0.3));

              return GestureDetector(
                onTap: () => _carouselController.animateToPage(index),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

// Big screens
Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: Container(
      constraints: BoxConstraints(
        maxWidth: kDesktopMaxWidth,
        minWidth: kDesktopMaxWidth,
      ),
      // maxWidth: kDesktopMaxWidth,
      // minWidth: kDesktopMaxWidth,
      // defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: Container(
      constraints: BoxConstraints(
        maxWidth: kTabletMaxWidth,
        minWidth: kTabletMaxWidth,
      ),
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}
