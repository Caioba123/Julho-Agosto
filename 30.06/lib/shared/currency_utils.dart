class CurrencyUtils {
  static String toReais(double value) {
    return "R\$ ${value.toStringAsFixed(2).replaceAll('.', ',')}";
  }
}
