// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    IngredientsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IngredientsScreen(),
      );
    },
    IngredientsWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const IngredientsWrapperScreen()),
      );
    },
    ListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ListScreen(),
      );
    },
    ListWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ListWrapperScreen()),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductsScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ProfileWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ProfileWrapperScreen()),
      );
    },
    TapeWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const TapeWrapperScreen()),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IngredientsScreen]
class IngredientsRoute extends PageRouteInfo<void> {
  const IngredientsRoute({List<PageRouteInfo>? children})
      : super(
          IngredientsRoute.name,
          initialChildren: children,
        );

  static const String name = 'IngredientsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IngredientsWrapperScreen]
class IngredientsWrapperRoute extends PageRouteInfo<void> {
  const IngredientsWrapperRoute({List<PageRouteInfo>? children})
      : super(
          IngredientsWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'IngredientsWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListScreen]
class ListRoute extends PageRouteInfo<void> {
  const ListRoute({List<PageRouteInfo>? children})
      : super(
          ListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListWrapperScreen]
class ListWrapperRoute extends PageRouteInfo<void> {
  const ListWrapperRoute({List<PageRouteInfo>? children})
      : super(
          ListWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ProductsScreen]
class ProductsRoute extends PageRouteInfo<void> {
  const ProductsRoute({List<PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileWrapperScreen]
class ProfileWrapperRoute extends PageRouteInfo<void> {
  const ProfileWrapperRoute({List<PageRouteInfo>? children})
      : super(
          ProfileWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TapeWrapperScreen]
class TapeWrapperRoute extends PageRouteInfo<void> {
  const TapeWrapperRoute({List<PageRouteInfo>? children})
      : super(
          TapeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'TapeWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
