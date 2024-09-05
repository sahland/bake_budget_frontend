import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const ListWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) => const AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}
