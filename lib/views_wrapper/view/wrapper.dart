import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:reward_tracker/routes/routes.dart';
import 'package:reward_tracker/shared/shared.dart';
import 'package:reward_tracker/views_wrapper/wrapper.dart';

@RoutePage()
class WrapperPage extends StatelessWidget {
  const WrapperPage({super.key});

  final List<PageRouteInfo<void>> routes = const [
    HomeRoute(),
    ChatRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: routes,
      backgroundColor: ColorConstants.backgroundColor,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          padding: const EdgeInsets.fromLTRB(31.0, 8.0, 31.0, 0.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: ColorConstants.borderColor,
                width: 1,
                style: BorderStyle.solid),
            color: ColorConstants.secondaryColor,
          ),
          child: SizedBox(
              height: 98,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: ColorConstants.secondaryColor,
                unselectedLabelStyle:
                    Theme.of(context).textTheme.titleMedium!.copyWith(
                          letterSpacing: -0.12,
                        ),
                selectedLabelStyle: Theme.of(context).textTheme.titleMedium,
                selectedItemColor: ColorConstants.textPrimaryColor,
                unselectedItemColor: ColorConstants.textSecondaryColor,
                elevation: 0.0,
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) {
                  tabsRouter.setActiveIndex(index);
                },
                items: [
                  BottomNavBarItem.home,
                  BottomNavBarItem.chat,
                ],
              )),
        );
      },
    );
  }
}
