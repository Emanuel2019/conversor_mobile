class CurrencyModel {
 String name;
 double kwanza;
 double dolar;
  double real;
  double euro;

  CurrencyModel({required this.name, required this.kwanza, required this.dolar, required this.real, required this.euro});
  static List<CurrencyModel> getCurrencies() {
    
    return <CurrencyModel>[
      CurrencyModel(
          name: 'kwanza',
          kwanza: 1.0,
          dolar: 503.56,
          real: 97.09,
          euro: 544.43),
      CurrencyModel(
          name: 'Dolar', kwanza: 0.0020, dolar: 0.19, real: 1.08, euro: 1.0),
      CurrencyModel(
          name: 'Real', kwanza: 0.010, dolar: 1.0, real: 5.19, euro: 5.61),
      CurrencyModel(
          name: 'Euro', kwanza: 0.0018, dolar: 0.18, real: 0.92, euro: 1.0)
    ];
  }
}
