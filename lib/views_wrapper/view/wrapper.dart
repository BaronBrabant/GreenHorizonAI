import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:GreenHorizon/routes/routes.dart';
import 'package:GreenHorizon/shared/shared.dart';
import 'package:GreenHorizon/views_wrapper/wrapper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@RoutePage()
class WrapperPage extends StatelessWidget {
  WrapperPage({super.key});

  final List<PageRouteInfo<void>> routes = [
    const HomeRoute(),
    ChatRoute(apiKey: dotenv.env['API_KEY']!),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: routes,
      backgroundColor: ColorConstants.primaryColorDark,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          padding: const EdgeInsets.fromLTRB(31.0, 2.0, 31.0, 0.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: ColorConstants.borderColor,
                width: 1,
                style: BorderStyle.solid),
            color: ColorConstants.primaryColorDark,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorConstants.primaryColorDark,
            unselectedLabelStyle:
                Theme.of(context).textTheme.titleMedium!.copyWith(
                      letterSpacing: -0.12,
                    ),
            selectedLabelStyle: Theme.of(context).textTheme.titleMedium,
            selectedItemColor: ColorConstants.selectedItemColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: ColorConstants.unselectedItemColor,
            elevation: 0.0,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavBarItem.home,
              BottomNavBarItem.chat,
            ],
          ),
        );
      },
    );
  }
}
