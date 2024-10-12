import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/data/data.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TokenStorage _tokenStorage = TokenStorage();

  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  void _checkAuthentication() async {
    final token = await _tokenStorage.getToken();
    if (token == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        AutoRouter.of(context).replace(const AuthRoute());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsRouter(
      duration: const Duration(microseconds: 250),
      routes: const [
        ProductsRoute(),
        IngredientsRoute(),
        AdditionalRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            margin: const EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: theme.cardColor,
                  blurRadius: 0,
                  offset: const Offset(0, 30),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BottomNavigationBar(
                onTap: (index) => _openPage(index, tabsRouter),
                unselectedItemColor: theme.cardColor,
                currentIndex: tabsRouter.activeIndex,
                backgroundColor: theme.cardColor,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                enableFeedback: false,
                type: BottomNavigationBarType.fixed,
                items: [
                  _buildNavBarItem(
                      theme, './assets/icons/cake_icon.svg', 0, tabsRouter),
                  _buildNavBarItem(theme, './assets/icons/ingredients_icon.svg',
                      1, tabsRouter),
                  _buildNavBarItem(
                      theme, './assets/icons/list_icon.svg', 2, tabsRouter),
                  _buildNavBarItem(
                      theme, './assets/icons/profile_icon.svg', 3, tabsRouter),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
    ThemeData theme,
    String path,
    int index,
    TabsRouter tabsRouter,
  ) {
    return BottomNavigationBarItem(
        icon: GestureDetector(
          onTap: () => _openPage(index, tabsRouter),
          child: SvgPicture.asset(
            path,
            width: 38,
            height: 38,
            colorFilter:
                ColorFilter.mode(theme.secondaryHeaderColor, BlendMode.srcIn),
          ),
        ),
        activeIcon: SvgPicture.asset(
          path,
          width: 42,
          height: 42,
          colorFilter: ColorFilter.mode(theme.primaryColor, BlendMode.srcIn),
        ),
        label: '');
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
