// ignore_for_file: public_member_api_docs, sort_constructors_first
class BottomCarousel {
  final String title;
  final String text;
  final String imagePath;

  BottomCarousel({
    required this.title,
    required this.text,
    required this.imagePath,
  });
}

List<BottomCarousel> items = [
  BottomCarousel(
      title: 'Seguro de vida',
      text: 'Cuide de quem voce ama de um jeito simples e que cabe n...',
      imagePath: 'assets/images/imagem-1.jpg'),
  BottomCarousel(
      title: 'SOS Nu',
      text: 'Aprenda como fugir de golpes e roubadas nesse carnaval.',
      imagePath: 'assets/images/imagem-2.jpg'),
  BottomCarousel(
      title: 'Roxinho',
      text: 'Dicas para voce usar o seu roxinho da melhor maneira.',
      imagePath: 'assets/images/imagem-3.jpeg'),
];
