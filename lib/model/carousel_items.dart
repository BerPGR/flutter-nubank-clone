// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  final String iconPath;
  final String type;
  Item({
    required this.iconPath,
    required this.type,
  });
}

List<Item> items = [
  Item(iconPath: 'assets/images/pix.png', type: 'Area Pix'),
  Item(iconPath: 'assets/images/codigo-de-barras.png', type: 'Pagar'),
  Item(iconPath: 'assets/images/transferir-dinheiro.png', type: 'Transferir'),
  Item(iconPath: 'assets/images/iphone.png', type: 'Recarga'),
  Item(iconPath: 'assets/images/deposito.png', type: 'Depositar'),
  Item(iconPath: 'assets/images/cobrar.png', type: 'Cobrar'),
  Item(iconPath: 'assets/images/internacional.png', type: 'Inter...'),
  Item(iconPath: 'assets/images/coracao.png', type: 'Doação'),
  Item(iconPath: 'assets/images/investir.png', type: 'Investir'),
  Item(iconPath: 'assets/images/caixinha.png', type: 'Caixinha'),
];
