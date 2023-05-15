import 'package:get/get.dart';

import '../modules/halaman_kedua/bindings/halaman_kedua_binding.dart';
import '../modules/halaman_kedua/views/halaman_kedua_view.dart';
import '../modules/halaman_ketiga/bindings/halaman_ketiga_binding.dart';
import '../modules/halaman_ketiga/views/halaman_ketiga_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_stateful/bindings/home_stateful_binding.dart';
import '../modules/home_stateful/views/home_stateful_view.dart';
import '../modules/jadwalsholat/bindings/jadwalsholat_binding.dart';
import '../modules/jadwalsholat/views/jadwalsholat_view.dart';
import '../modules/snackbarstyle/bindings/snackbarstyle_binding.dart';
import '../modules/snackbarstyle/views/snackbarstyle_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.halamanKedua,
      page: () => HalamanKeduaView(),
      binding: HalamanKeduaBinding(),
    ),
    GetPage(
      name: _Paths.halamanKetiga,
      page: () => HalamanKetigaView(),
      binding: HalamanKetigaBinding(),
    ),
    GetPage(
      name: _Paths.snackbarstyle,
      page: () => const SnackbarstyleView(),
      binding: SnackbarstyleBinding(),
    ),
    GetPage(
      name: _Paths.jadwalsholat,
      page: () => const JadwalsholatView(),
      binding: JadwalsholatBinding(),
    ),
    GetPage(
      name: _Paths.home_stateful,
      page: () => HomeStatefulView(),
      binding: HomeStatefulBinding(),
    ),
  ];
}
