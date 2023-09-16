import 'package:jorden/model/brand.dart';
import 'package:jorden/model/calendar.dart';
import 'package:jorden/model/colors.dart';
import 'package:jorden/model/onbording.dart';
import 'package:jorden/model/search.dart';
import 'package:jorden/model/selling.dart';
import 'package:jorden/model/size.dart';
import 'package:jorden/model/want_model.dart';
import 'package:jorden/utils/colors.dart';

List<OnBordingModel> bordingList = [
  OnBordingModel(
      image: 'bording1',
      text: 'WELCOME',
      desc: 'Welcome to Jorden, where you can buy and sell sneakers.'),
  OnBordingModel(
      image: 'bording2',
      text: 'STYLE',
      desc: 'Experience the trendy fashion styles updated camp Jorden.'),
  OnBordingModel(
      image: 'bording3',
      text: 'EARNING.',
      desc: 'Sell ​​your sneakers quickly at the best prices in Jorden.'),
  OnBordingModel(
      image: 'bording4',
      text: 'SAFETY.',
      desc: 'We put safety first, quality control process is guaranteed.')
];
List<CalendarModel> calendarList = [
  CalendarModel(
      image: 'calendar1',
      text: 'Nike Mag Back to The Future 2019',
      date: 'JUN 06, 2021',
      price: '546',
      result: 'success',
      amount: '45'),
  CalendarModel(
      image: 'calendar2',
      text: 'Fear of God Nike XXX Triple Black',
      date: 'JUN 21, 2021',
      price: '420',
      result: 'error',
      amount: '15'),
  CalendarModel(
      image: 'calendar3',
      text: 'Nike Jordan 4 Bred Goat - Red Silver',
      date: 'JUN 23, 2021',
      price: '320',
      result: 'success',
      amount: '15'),
  CalendarModel(
      image: 'calendar4',
      text: 'Jordan 6 Retro Electric Green',
      date: 'JUN 12, 2021',
      price: '520',
      result: 'success',
      amount: '25'),
  CalendarModel(
      image: 'calendar1',
      text: 'Nike Mag Back to The Future 2019',
      date: 'JUN 06, 2021',
      price: '546',
      result: 'success',
      amount: '45'),
  CalendarModel(
      image: 'calendar2',
      text: 'Fear of God Nike XXX Triple Black',
      date: 'JUN 21, 2021',
      price: '420',
      result: 'error',
      amount: '15'),
  CalendarModel(
      image: 'calendar3',
      text: 'Nike Jordan 4 Bred Goat - Red Silver',
      date: 'JUN 23, 2021',
      price: '320',
      result: 'success',
      amount: '15'),
  CalendarModel(
      image: 'calendar4',
      text: 'Jordan 6 Retro Electric Green',
      date: 'JUN 12, 2021',
      price: '520',
      result: 'success',
      amount: '25')
];
List<SearchModel> searchList = [
  SearchModel(
      image: 'popular1',
      text: 'Nike Jordan 4 black Cat Limited 2.0',
      price: '620',
      time: 'A minute ago'),
  SearchModel(
      image: 'calendar3',
      text: 'Tenis Nike Zoom Double Stacked',
      price: '320',
      time: '23 minutes ago'),
  SearchModel(
      image: 'recommended1',
      text: 'Nike Jordan 4 black Cat Limited 2.0',
      price: '620',
      time: 'A minute ago'),
  SearchModel(
      image: 'lowest1',
      text: 'Tenis Nike Zoom Double Stacked',
      price: '320',
      time: '23 minutes ago'),
  SearchModel(
      image: 'popular1',
      text: 'Nike Jordan 4 black Cat Limited 2.0',
      price: '620',
      time: 'A minute ago'),
  SearchModel(
      image: 'calendar3',
      text: 'Tenis Nike Zoom Double Stacked',
      price: '320',
      time: '23 minutes ago'),
];

List<BrandModel> brandList = [
  BrandModel(image: 'adidas', name: 'ADIDAS'),
  BrandModel(image: 'converse', name: 'CONVERSE'),
  BrandModel(image: 'jordan', name: 'JORDAN'),
  BrandModel(image: 'nike', name: 'NIKE'),
  BrandModel(image: 'puma', name: 'PUMA')
];

List<ColorModel> colorList = [
  ColorModel(color: ColorUtils.inkBase, name: 'Black'),
  ColorModel(color: ColorUtils.blue, name: 'Blue'),
  ColorModel(color: ColorUtils.brown, name: 'Brown'),
  ColorModel(color: ColorUtils.cream, name: 'Cream'),
  ColorModel(color: ColorUtils.green, name: 'Green'),
  ColorModel(color: ColorUtils.grey, name: 'Grey'),
  ColorModel(color: ColorUtils.orange, name: 'Orange'),
  ColorModel(color: ColorUtils.purple, name: 'Purple'),
  ColorModel(color: ColorUtils.red, name: 'Red'),
  ColorModel(color: ColorUtils.white, name: 'White')
];

List<SizeModel> newSizeList = [
  SizeModel(size: '10.5 ', price: '\$850'),
  SizeModel(size: '11 ', price: '\$890 - NO BOX'),
  SizeModel(size: '11 ', price: '\$800 - NO LID'),
  SizeModel(size: '11 ', price: '\$900'),
  SizeModel(size: '12 ', price: 'Offer'),
  SizeModel(size: '13 ', price: '\$300'),
  SizeModel(size: '14 ', price: '\$300'),
  SizeModel(size: '15 ', price: '\$300'),
  SizeModel(size: '16 ', price: '\$300'),
];

List<WantProductModel> wantList = [
  WantProductModel(
      image: 'top1', topOffer: '500', lowPrice: '568', lastSale: '569'),
  WantProductModel(
      image: 'top2', topOffer: '300', lowPrice: '325', lastSale: '375'),
  WantProductModel(
      image: 'top3', topOffer: '300', lowPrice: '325', lastSale: '375')
];

List<WantProductModel> ownList = [
  WantProductModel(
      image: 'top5', topOffer: '300', lowPrice: '325', lastSale: '375'),
  WantProductModel(
      image: 'top4', topOffer: '300', lowPrice: '325', lastSale: '375'),
  WantProductModel(
      image: 'top2', topOffer: '300', lowPrice: '325', lastSale: '375')
];

List<SellingModel> sellingList = [
  const SellingModel(image: 'confirm', total: '2', text: 'Need to CONFIRM'),
  const SellingModel(image: 'shipped', total: '7', text: 'Shipped'),
  const SellingModel(image: 'review', total: '5', text: 'REVIEWING'),
  const SellingModel(image: 'verified', total: '5', text: 'Verified')
];
