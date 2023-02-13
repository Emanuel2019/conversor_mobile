import 'package:conversor_mobile/app/controllers/currency_controller.dart';
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
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber))),
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
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                  onPressed: () {},
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
