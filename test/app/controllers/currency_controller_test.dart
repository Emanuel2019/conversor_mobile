import 'package:conversor_mobile/app/controllers/currency_controller.dart';
import 'package:conversor_mobile/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final currencyController =
      CurrencyController(toText: toText, fromText: fromText);
  test("Deve converter de kwanza para dolar", () {
    toText.text = "2,0";
    currencyController.converter();
    expect(fromText.text, '0.00');
  });
  test('converter valor em real para kwanza', () {
    toText.text = "1.0";
    currencyController.toCurrency = CurrencyModel(
        name: 'Dolar', kwanza:1.0, dolar: 0.19, real: 1.08, euro: 1.0);
    currencyController.fromCurrency = CurrencyModel(
        name: 'kwanza', kwanza: 1.0, dolar: 503.56, real: 97.09, euro: 544.43);
    currencyController.converter();
    expect(fromText, '1.08');
  });
}
