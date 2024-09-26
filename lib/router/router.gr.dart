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
    AdditionalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdditionalScreen(),
      );
    },
    AdditionalWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const AdditionalWrapperScreen()),
      );
    },
    CostCalculationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CostCalculationScreen(),
      );
    },
    CostsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CostsScreen(),
      );
    },
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
    OrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreen(
          key: args.key,
          title: args.title,
          weight: args.weight,
          imagePath: args.imagePath,
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
    ReportRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReportScreen(),
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
/// [AdditionalScreen]
class AdditionalRoute extends PageRouteInfo<void> {
  const AdditionalRoute({List<PageRouteInfo>? children})
      : super(
          AdditionalRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdditionalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdditionalWrapperScreen]
class AdditionalWrapperRoute extends PageRouteInfo<void> {
  const AdditionalWrapperRoute({List<PageRouteInfo>? children})
      : super(
          AdditionalWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdditionalWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CostCalculationScreen]
class CostCalculationRoute extends PageRouteInfo<void> {
  const CostCalculationRoute({List<PageRouteInfo>? children})
      : super(
          CostCalculationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CostCalculationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CostsScreen]
class CostsRoute extends PageRouteInfo<void> {
  const CostsRoute({List<PageRouteInfo>? children})
      : super(
          CostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CostsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [OrdersScreen]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required String title,
    required String weight,
    required String imagePath,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            title: title,
            weight: weight,
            imagePath: imagePath,
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
    required this.weight,
    required this.imagePath,
  });

  final Key? key;

  final String title;

  final String weight;

  final String imagePath;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, title: $title, weight: $weight, imagePath: $imagePath}';
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
/// [ReportScreen]
class ReportRoute extends PageRouteInfo<void> {
  const ReportRoute({List<PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

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
