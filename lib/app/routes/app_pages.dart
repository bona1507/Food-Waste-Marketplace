import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/additional/bindings/additional_binding.dart';
import '../modules/additional/views/additional_view.dart';
import '../modules/address/bindings/address_binding.dart';
import '../modules/address/views/address_view.dart';
import '../modules/arrived/bindings/arrived_binding.dart';
import '../modules/arrived/views/arrived_view.dart';
import '../modules/buy/bindings/buy_binding.dart';
import '../modules/buy/views/buy_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/courier/bindings/courier_binding.dart';
import '../modules/courier/views/courier_view.dart';
import '../modules/empty_cart/bindings/empty_cart_binding.dart';
import '../modules/empty_cart/views/empty_cart_view.dart';
import '../modules/frozen_food/bindings/frozen_food_binding.dart';
import '../modules/frozen_food/views/frozen_food_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/history_sell/bindings/history_sell_binding.dart';
import '../modules/history_sell/views/history_sell_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeC/bindings/home_c_binding.dart';
import '../modules/homeC/views/home_c_view.dart';
import '../modules/homeC2/bindings/home_c2_binding.dart';
import '../modules/homeC2/views/home_c2_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/loginC/bindings/login_c_binding.dart';
import '../modules/loginC/views/login_c_view.dart';
import '../modules/my_points/bindings/my_points_binding.dart';
import '../modules/my_points/views/my_points_view.dart';
import '../modules/my_points2/bindings/my_points2_binding.dart';
import '../modules/my_points2/views/my_points2_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/notification2/bindings/notification2_binding.dart';
import '../modules/notification2/views/notification2_view.dart';
import '../modules/ob1/bindings/ob1_binding.dart';
import '../modules/ob1/bindings/ob1_binding.dart';
import '../modules/ob1/views/ob1_view.dart';
import '../modules/ob1/views/ob1_view.dart';
import '../modules/ob2/bindings/ob2_binding.dart';
import '../modules/ob2/views/ob2_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/pengantaran/bindings/pengantaran_binding.dart';
import '../modules/pengantaran/views/pengantaran_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/profileC/bindings/profile_c_binding.dart';
import '../modules/profileC/views/profile_c_view.dart';
import '../modules/qris/bindings/qris_binding.dart';
import '../modules/qris/views/qris_view.dart';
import '../modules/reward/bindings/reward_binding.dart';
import '../modules/reward/views/reward_view.dart';
import '../modules/sell1/bindings/sell1_binding.dart';
import '../modules/sell1/views/sell1_view.dart';
import '../modules/sell2/bindings/sell2_binding.dart';
import '../modules/sell2/views/sell2_view.dart';
import '../modules/sell3/bindings/sell3_binding.dart';
import '../modules/sell3/views/sell3_view.dart';
import '../modules/sign-up/bindings/sign_up_binding.dart';
import '../modules/sign-up/views/sign_up_view.dart';
import '../modules/sign-upC/bindings/sign_up_c_binding.dart';
import '../modules/sign-upC/views/sign_up_c_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.SELL1,
      page: () => const Sell1View(),
      binding: Sell1Binding(),
    ),
    GetPage(
      name: _Paths.SELL2,
      page: () => const Sell2View(),
      binding: Sell2Binding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.BUY,
      page: () => const BuyView(),
      binding: BuyBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SELL3,
      page: () => const Sell3View(),
      binding: Sell3Binding(),
    ),
    GetPage(
      name: _Paths.ADDITIONAL,
      page: () => const AdditionalView(),
      binding: AdditionalBinding(),
    ),
    GetPage(
      name: _Paths.ARRIVED,
      page: () => const ArrivedView(),
      binding: ArrivedBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION2,
      page: () => const Notification2View(),
      binding: Notification2Binding(),
    ),
    GetPage(
      name: _Paths.OB2,
      page: () => const Ob2View(),
      binding: Ob2Binding(),
    ),
    GetPage(
      name: _Paths.OB1,
      page: () => const Ob1View(),
      binding: Ob1Binding(),
      children: [
        GetPage(
          name: _Paths.OB1,
          page: () => const Ob1View(),
          binding: Ob1Binding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.FROZEN_FOOD,
      page: () => const FrozenFoodView(),
      binding: FrozenFoodBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressView(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.MY_POINTS,
      page: () => const MyPointsView(),
      binding: MyPointsBinding(),
    ),
    GetPage(
      name: _Paths.QRIS,
      page: () => const QrisView(),
      binding: QrisBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_CART,
      page: () => const EmptyCartView(),
      binding: EmptyCartBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_SELL,
      page: () => const HistorySellView(),
      binding: HistorySellBinding(),
    ),
    GetPage(
      name: _Paths.REWARD,
      page: () => const RewardView(),
      binding: RewardBinding(),
    ),
    GetPage(
      name: _Paths.MY_POINTS2,
      page: () => const MyPoints2View(),
      binding: MyPoints2Binding(),
    ),
    GetPage(
      name: _Paths.LOGIN_C,
      page: () => const LoginCView(),
      binding: LoginCBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_C,
      page: () => const SignUpCView(),
      binding: SignUpCBinding(),
    ),
    GetPage(
      name: _Paths.HOME_C,
      page: () => const HomeCView(),
      binding: HomeCBinding(),
    ),
    GetPage(
      name: _Paths.HOME_C2,
      page: () => const HomeC2View(),
      binding: HomeC2Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE_C,
      page: () => const ProfileCView(),
      binding: ProfileCBinding(),
    ),
    GetPage(
      name: _Paths.PENGANTARAN,
      page: () => const PengantaranView(),
      binding: PengantaranBinding(),
    ),
    GetPage(
      name: _Paths.COURIER,
      page: () => const CourierView(),
      binding: CourierBinding(),
    ),
  ];
}
