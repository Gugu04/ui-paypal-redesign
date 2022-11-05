import 'package:ui_paypal_redesign/src/core/constants/constants.dart';

final accountOptions = ['Send', 'Accouts', 'To give', 'Request'];

final contacts = [
  ContactModel(image: AppAssets.perfil1, name: 'Alejandro'),
  ContactModel(image: AppAssets.perfil2, name: 'Sofia'),
  ContactModel(image: AppAssets.perfil3, name: 'Estela'),
  ContactModel(image: AppAssets.perfil4, name: 'Roberto'),
  ContactModel(image: AppAssets.perfil5, name: 'Adam'),
];

final keyboardNumbers = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '.',
  '0',
];
// Los emojis pueden cambiar de acuerdo al android
final emojis = [
  '\u{2615}',
  '\u{1F4BB}',
  '\u{1f495}',
  '\u{1F932}',
  '\u{1F60D}',
  '\u{1F642}'
];

final contacts2 = [
  ContactModel(
      image: AppAssets.perfil6,
      name: 'Roman isidro',
      email: 'antonio@gmail.com'),
  ContactModel(
      image: AppAssets.perfil7,
      name: 'Diego velasquez',
      email: 'diego@diegoveloper.com'),
  ContactModel(
      image: AppAssets.perfil8,
      name: 'Daniel Flores',
      email: 'danddy@gmail.com'),
  ContactModel(
      image: AppAssets.perfil9,
      name: 'Raul Miranda',
      email: 'raul.miranda@gmail.com'),
  ContactModel(
      image: AppAssets.perfil10,
      name: 'Monica Mellin',
      email: 'vicme@gmail.com'),
];

final transactions = [
  Transactions(
      imagen: AppAssets.amazon,
      name: 'Amazon',
      date: '17 Sep',
      categoryType: 'Automatic',
      amount: 299.90,
      diminish: true),
  Transactions(
      imagen: AppAssets.perfil1,
      name: 'Locas Henry Guzman',
      date: '10 Sep',
      categoryType: 'Received',
      amount: 550.00,
      diminish: false),
  Transactions(
      imagen: AppAssets.playStore,
      name: 'Play store',
      date: '02 Sep',
      categoryType: 'Automatic',
      amount: 150.00,
      diminish: true),
  Transactions(
      imagen: AppAssets.perfil3,
      name: 'Estela Brown',
      date: '23 Mar',
      categoryType: 'Received',
      amount: 250.00,
      diminish: false),
  Transactions(
      imagen: AppAssets.mercadoLibre,
      name: 'Mercado Libre',
      date: '17 Mar',
      categoryType: 'Automatic',
      amount: 227.00,
      diminish: true),
];

final menu = [
  MenuModel(tag: 'home', icon: AppAssets.home, height: 28),
  MenuModel(tag: 'money', icon: AppAssets.moneySymbol, height: 28),
  MenuModel(tag: 'favorites', icon: AppAssets.favorites, height: 28),
  MenuModel(tag: 'purse', icon: AppAssets.purse, height: 28),
];

class MenuModel {
  String tag;
  String icon;
  double height;
  MenuModel({
    required this.tag,
    required this.icon,
    required this.height,
  });
}

class ContactModel {
  String image;
  String name;
  String? email;
  ContactModel({required this.image, required this.name, this.email});
}

class Transactions {
  String imagen;
  String name;
  String date;
  String categoryType;
  double amount;
  bool diminish;
  Transactions({
    required this.imagen,
    required this.name,
    required this.date,
    required this.categoryType,
    required this.amount,
    required this.diminish,
  });
}
