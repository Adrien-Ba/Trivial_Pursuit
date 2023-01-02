import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/ui/pages/login/login_page.dart';

abstract class AppRoutes {
  static const root = '/';

  static GoRouter buildRouter() => GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: root,
            builder: (context, state) => LoginPage(),
            routes: const [],
          )
        ],
      );
}
