// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:autoroute_test/src/features/roster/presentation/roster_screen.dart'
    as _i1;
import 'package:autoroute_test/src/features/roster/sub_screens/documents/presentation/documents_screen.dart'
    as _i2;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RosterRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RosterScreen(),
      );
    },
    EmptyRoutePage.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRoutePage(),
      );
    },
    DocumentsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DocumentsRouteArgs>(
          orElse: () =>
              DocumentsRouteArgs(patientId: pathParams.getInt('patientId')));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DocumentsScreen(
          key: args.key,
          patientId: args.patientId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.RosterScreen]
class RosterRoute extends _i3.PageRouteInfo<void> {
  const RosterRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RosterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RosterRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i1.EmptyRoutePage]
class EmptyRoutePage extends _i3.PageRouteInfo<void> {
  const EmptyRoutePage({List<_i3.PageRouteInfo>? children})
      : super(
          EmptyRoutePage.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoutePage';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DocumentsScreen]
class DocumentsRoute extends _i3.PageRouteInfo<DocumentsRouteArgs> {
  DocumentsRoute({
    _i4.Key? key,
    required int patientId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DocumentsRoute.name,
          args: DocumentsRouteArgs(
            key: key,
            patientId: patientId,
          ),
          rawPathParams: {'patientId': patientId},
          initialChildren: children,
        );

  static const String name = 'DocumentsRoute';

  static const _i3.PageInfo<DocumentsRouteArgs> page =
      _i3.PageInfo<DocumentsRouteArgs>(name);
}

class DocumentsRouteArgs {
  const DocumentsRouteArgs({
    this.key,
    required this.patientId,
  });

  final _i4.Key? key;

  final int patientId;

  @override
  String toString() {
    return 'DocumentsRouteArgs{key: $key, patientId: $patientId}';
  }
}
