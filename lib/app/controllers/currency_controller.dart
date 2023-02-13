import 'package:conversor_mobile/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyController {
  late List<CurrencyModel> currencies;
 final TextEditingController toText;
 final  TextEditingController fromText;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;
  CurrencyController({ required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void converter() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;
    if (fromCurrency.name == "Real") {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency == "Dolar") {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency == "Kwanza") {
      returnValue = value * toCurrency.kwanza;
    } else if (fromCurrency == "Euro") {
      returnValue = value * toCurrency.euro;
    }
    fromText.text = returnValue.toStringAsFixed(2);
  }
}
