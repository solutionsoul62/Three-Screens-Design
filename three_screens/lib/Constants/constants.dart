import 'package:get/get.dart';
import 'package:three_screens/Models/app_models.dart';

double width = Get.width;
double height = Get.height;

class AppIcons {
  static const String logo = 'assets/icons/logo_gbm.png';
  static const String internalization = 'assets/icons/internalisation@3x.png';
  static const String header = 'assets/icons/header_logo.png';
  static const String lock = 'assets/icons/lock_icon@3x.png';
  static const String authentication = 'assets/icons/imgpsh_mobile_save.png';
  static const String authenticationAr =
      'assets/icons/imgpsh_mobile_save_ar.png';
  static const String forexIco = 'assets/icons/forex_icon_black@3x.png';
  static const String location = 'assets/icons/pin_icon_black@3x.png';
  static const String callCenter = 'assets/icons/call_center_fz.png';
  static const String contact = 'assets/icons/contact_icon_black@3x.png';
  static const String qrcode = 'assets/icons/qr_code.png';
  static const String cashin = 'assets/icons/agent_cash_in.png';
  static const String cashout = 'assets/icons/agent_cash_out.png';
  static const String discharge = 'assets/icons/agent_discharge-2.png';
  static const String enroll = 'assets/icons/agent_enroll.png';
  static const String persoWallet = 'assets/icons/agent_link_perso-1.png';
  static const String members = 'assets/icons/agent_team-2.png';
  static const String topup = 'assets/icons/agent_top_up-3.png';
  static const String sendMoney = 'assets/icons/send_money.png';
  static const String accounts = 'assets/icons/wallet_icon@3x.png';

  static const String headphone = 'assets/icons/headphone.png';
  static const String settings = 'assets/icons/settings@3x.png';
  static const String news = 'assets/icons/news.png';
  static const String menu = 'assets/icons/menu@3x.png';
  static const String alert = 'assets/icons/alert@3x.png';

  static const String merchantcardbg = 'assets/icons/merchant_card_bg.png';
  static const String merchantdeactivatedcard =
      'assets/icons/merchant_card_bg_deactivated.png';
  static const String cardbg = 'assets/icons/cardbackground_world-2.png';
}

List<AppModels> forexList = <AppModels>[
  AppModels(
    title: 'Canandian Dollar',
    buy: 26.02,
    sell: 26.29,
    subtitle: 'CAD',
    value: 0,
    image: 'CA',
  ),
  AppModels(
    title: 'Swedish Krone',
    buy: 3.65,
    sell: 3.69,
    subtitle: 'SEK',
    value: 1,
    image: '+46',
  ),
  AppModels(
    title: 'Norweqian Krone',
    buy: 3.53,
    sell: 3.56,
    subtitle: 'NOK',
    value: 2,
    image: '+47',
  ),
  AppModels(
    title: 'Swiss Frenc',
    buy: 38.34,
    sell: 38.37,
    subtitle: 'CHF',
    value: 3,
    image: '+41',
  ),
  AppModels(
    title: 'Euro',
    buy: 40.38,
    sell: 40.78,
    subtitle: 'EUR',
    value: 4,
    image: '+284',
  ),
  AppModels(
    title: 'Algerian Dinar',
    buy: 0.28,
    sell: 0.28,
    subtitle: 'DZD',
    value: 5,
    image: '+213',
  ),
  AppModels(
    title: 'Tunisian Dinar',
    buy: 12.81,
    sell: 12.94,
    subtitle: 'TND',
    value: 6,
    image: '+216',
  ),
  AppModels(
    title: 'Japanese yen',
    buy: 0.34,
    sell: 0.35,
    subtitle: 'JPY',
    value: 7,
    image: '+81',
  ),
  AppModels(
    title: 'US Dollar',
    buy: 26.28,
    sell: 26.55,
    subtitle: 'USD',
    value: 8,
    image: '+1',
  ),
  AppModels(
    title: 'Moroccan Dirhams ',
    buy: 3.65,
    sell: 3.69,
    subtitle: 'MAD',
    value: 9,
    image: '+212',
  ),
  AppModels(
    title: 'CFA Franc BCEAO',
    buy: 0.05,
    sell: 0.07,
    subtitle: 'XOF',
    value: 10,
    image: '+33',
  ),
  AppModels(
    title: 'Danish Krone',
    buy: 5.43,
    sell: 5.48,
    subtitle: 'DKK',
    value: 0,
    image: '+45',
  ),
];

List<AppModels> dashboard = <AppModels>[
  AppModels(title: 'Qr Code', image: AppIcons.qrcode, value: 0),
  AppModels(title: 'Qr Code Sticker', image: AppIcons.qrcode, value: 1),
  AppModels(title: 'Pay Supplier', image: AppIcons.sendMoney, value: 2),
  AppModels(title: 'Money Receive', image: AppIcons.sendMoney, value: 3),
  AppModels(title: 'Cash In', image: AppIcons.cashin, value: 4),
  AppModels(title: 'Cash Out', image: AppIcons.cashout, value: 5),
  AppModels(title: 'Top Up', image: AppIcons.topup, value: 6),
  AppModels(title: 'Discharge', image: AppIcons.discharge, value: 11),
  AppModels(title: 'Perso Wallet', image: AppIcons.persoWallet, value: 7),
  AppModels(title: 'Accounts', image: AppIcons.accounts, value: 8),
  AppModels(title: 'Members', image: AppIcons.members, value: 9),
  AppModels(title: 'Enroll', image: AppIcons.enroll, value: 10),
];

List<AppModels> internationlizationList = <AppModels>[
  AppModels(title: 'EN', value: 0),
  AppModels(title: 'AR', value: 1),
];

List<AppModels> numericButtons = <AppModels>[
  AppModels(title: '4', value: 4),
  AppModels(title: '2', value: 2),
  AppModels(title: '8', value: 8),
  AppModels(title: '6', value: 6),
  AppModels(title: '3', value: 3),
  AppModels(title: '5', value: 5),
  AppModels(title: '9', value: 9),
  AppModels(title: '0', value: 0),
  AppModels(title: '7', value: 7),
  AppModels(title: '1', value: 1),
  AppModels(title: '<<<<', value: 11),
];
