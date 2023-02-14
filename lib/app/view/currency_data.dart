import 'package:conversor_mobile/app/controllers/currency_controller.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurrencyData extends StatefulWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  late CurrencyController currencyController;
  // ignore: use_key_in_widget_constructors
  CurrencyData() {
    currencyController = CurrencyController(toText: toText, fromText: fromText);
  }

  @override
  State<CurrencyData> createState() => _CurrencyDataState();
}

class _CurrencyDataState extends State<CurrencyData> {
  String moeda = "Kwanza";
  String newmoeda = "Kwanza";
  String oldval = "";
  String newVal = "";
  TextEditingController moedal_1 = TextEditingController();
  TextEditingController moedal_2 = TextEditingController();
  void converter() {
    String moeda1 = "";
    String moeda2 = "";
    double valor1 = 0;
    double valor2 = 0;
    moeda1 = moeda;
    moeda2 = newmoeda;
    if (moeda1 == "Kwanza") {
      switch (moeda2) {
        case "Dolar":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 / 504.3;
          moedal_2.text = valor2.toString();
          break;
        case "Euro":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 / 542.33;
          moedal_2.text = valor2.toString();
          break;
        case "Real":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 / 97.73;
          moedal_2.text = valor2.toString();
          break;
      }
    } else if (moeda2 == "Kwanza") {
      switch (moeda1) {
        case "Dolar":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 504.3;
          moedal_2.text = valor2.toString();
          break;
        case "Euro":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 542.33;
          moedal_2.text = valor2.toString();
          break;
        case "Real":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 97.73;
          moedal_2.text = valor2.toString();
          break;
        case "Kwanza":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1;
          moedal_2.text = valor2.toString();
      }
    } else if (moeda1 == "Dolar") {
      switch (moeda2) {
        case "Dolar":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1;
          moedal_2.text = valor2.toString();
          break;
        case "Euro":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 0.93;
          moedal_2.text = valor2.toString();
          break;
        case "Real":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 5.16;
          moedal_2.text = valor2.toString();
          break;
        case "Kwanza":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 504.32;
          moedal_2.text = valor2.toString();
          break;
      }
    } else if (moeda1 == "Euro") {
      switch (moeda2) {
        case "Dolar":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 1.08;
          moedal_2.text = valor2.toString();
          break;
        case "Euro":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1;
          moedal_2.text = valor2.toString();
          break;
        case "Real":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 5.55;
          moedal_2.text = valor2.toString();
          break;
        case "Kwanza":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 542.70;
          moedal_2.text = valor2.toString();
          break;
      }
    } else if (moeda1 == "Real") {
      switch (moeda2) {
        case "Dolar":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 0.19;
          moedal_2.text = valor2.toString();
          break;
        case "Euro":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1* 0.18;
          moedal_2.text = valor2.toString();
          break;
        case "Real":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 ;
          moedal_2.text = valor2.toString();
          break;
        case "Kwanza":
          valor1 = double.tryParse(moedal_1.text.replaceAll(',', '.')) ?? 1.0;
          valor2 = valor1 * 97.79;
          moedal_2.text = valor2.toString();
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/vc1.jpeg',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton(
                          value: moeda,
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Kwanza'),
                              value: "Kwanza",
                            ),
                            DropdownMenuItem(
                              child: Text('Dolar'),
                              value: "Dolar",
                            ),
                            DropdownMenuItem(
                              child: Text('Euro'),
                              value: "Euro",
                            ),
                            DropdownMenuItem(
                              child: Text('Real'),
                              value: "Real",
                            ),
                          ],
                          onChanged: (oldval) {
                            setState(() {
                              moeda = oldval!;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: moedal_1,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton(
                          value: newmoeda,
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Kwanza'),
                              value: "Kwanza",
                            ),
                            DropdownMenuItem(
                              child: Text('Dolar'),
                              value: "Dolar",
                            ),
                            DropdownMenuItem(
                              child: Text('Euro'),
                              value: "Euro",
                            ),
                            DropdownMenuItem(
                              child: Text('Real'),
                              value: "Real",
                            ),
                          ],
                          onChanged: (newVal) {
                            setState(() {
                              newmoeda = newVal!;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: moedal_2,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)),
                      ),
                      inputFormatters: [CurrencyTextInputFormatter()],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                  onPressed: () {
                    setState(() {
                      converter();
                    });
                  },
                  child: Text(
                    'CONVERTER',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
