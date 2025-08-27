import 'package:fund_management/features/funds/presentation/screen/fund_subscription_screen.dart';
import 'package:fund_management/features/home/presentation/screens/home_screen.dart';
import 'package:fund_management/features/transaction_history/presentation/screens/transaction_history_screen.dart';
import 'package:fund_management/features/user/data/models/user.dart';
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
      builder:
          (context, state) => FundSubscriptionScreen(user: state.extra as User),
    ),
    GoRoute(
      path: '/transaction-history',
      name: TransactionHistoryScreen.name,
      builder:
          (context, state) =>
              TransactionHistoryScreen(user: state.extra as User),
    ),
    // GoRoute(path: '/', redirect: (_, __) => '/'),
  ],
);
