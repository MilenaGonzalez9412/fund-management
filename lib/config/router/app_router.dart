import 'package:fund_management/features/funds/presentation/screen/fund_subscription_screen.dart';
import 'package:fund_management/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/fund-subscription',
      name: FundSubscriptionScreen.name,
      builder: (context, state) => FundSubscriptionScreen(),
    ),
    GoRoute(path: '/', redirect: (_, __) => '/'),
  ],
);
