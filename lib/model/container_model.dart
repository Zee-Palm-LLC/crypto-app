import 'package:crypto_app/model/spline_graph_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/constants.dart';

class CryptoContainer {
  final String tag;
  final String coinname;
  final String cointag;
  final String coinvalue;
  final String coinrate;
  final Color backcolor;
  final Color fontcolor;
  final List<ChartData> chdata;
  CryptoContainer({
    required this.tag,
    required this.coinname,
    required this.cointag,
    required this.coinvalue,
    required this.coinrate,
    required this.backcolor,
    required this.fontcolor,
    required this.chdata,
  });
}

List<CryptoContainer> crptolist = [
  CryptoContainer(
      tag: "E",
      coinname: "Etherium",
      cointag: "ETH",
      coinvalue: "13,410",
      coinrate: "+1.49(127)",
      backcolor: CustomColor.kContblue,
      fontcolor: CustomColor.klightgreen,
      chdata: ethData),
  CryptoContainer(
      tag: "B",
      coinname: "Bitcoin",
      cointag: "BTC",
      coinvalue: "26,50",
      coinrate: "+3.49(131)",
      backcolor: CustomColor.kyellowcont,
      fontcolor: CustomColor.kinneryellow,
      chdata: bitcoinData),
  CryptoContainer(
      tag: "C",
      coinname: "Binanace",
      cointag: "BIN",
      coinvalue: "59,44",
      coinrate: "-0.24(133)",
      backcolor: CustomColor.kContred,
      fontcolor: CustomColor.kinnerred,
      chdata: binData),
];
