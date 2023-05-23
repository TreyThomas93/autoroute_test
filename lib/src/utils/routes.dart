import 'package:auto_route/auto_route.dart';

import 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  final transitionsBuilder = TransitionsBuilders.fadeIn;
  final durationInMilliseconds = 400;

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: "/roster",
          initial: true,
          page: EmptyRoutePage.page,
          transitionsBuilder: transitionsBuilder,
          durationInMilliseconds: durationInMilliseconds,
          children: [
            CustomRoute(
              path: "",
              page: RosterRoute.page,
              transitionsBuilder: transitionsBuilder,
              durationInMilliseconds: durationInMilliseconds,
            ),
            CustomRoute(
              path: "documents/:patientId",
              page: EmptyRoutePage.page,
              transitionsBuilder: transitionsBuilder,
              durationInMilliseconds: durationInMilliseconds,
              children: [
                CustomRoute(
                  path: "",
                  page: DocumentsRoute.page,
                  transitionsBuilder: transitionsBuilder,
                  durationInMilliseconds: durationInMilliseconds,
                ),
                // CustomRoute(
                //   path: "document/:documentId",
                //   page: DocumentRoute.page,
                //   transitionsBuilder: transitionsBuilder,
                //   durationInMilliseconds: durationInMilliseconds,
                // ),
              ],
            ),
          ],
        ),
      ];
}
