import 'package:flutter/material.dart';

class CardModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final List<CardCategory> CardCats;
  CardModel(
      this.id, this.CardCats, this.bgColor, this.name, this.thumbnailPath);

  static List<CardModel> cards = [
    CardModel(1, [CardCategory.birthday], Color(0xFF6188b1), "Birthday",
        "assets/cards/cake-bday.png"),
    CardModel(2, [CardCategory.christmas], Color(0xFF6188b1), "Birthday",
        "assets/cards/doge-xmas.png"),
    CardModel(3, [CardCategory.general], Color(0xFF6188b1), "Birthday",
        "assets/cards/flower.png"),
    CardModel(4, [CardCategory.congratulations], Color(0xFF6188b1), "Birthday",
        "assets/cards/gift-happy.png"),
    CardModel(5, [CardCategory.christmas], Color(0xFF6188b1), "Birthday",
        "assets/cards/happy-bday.png"),
    CardModel(6, [CardCategory.birthday], Color(0xFF6188b1), "Birthday",
        "assets/cards/happy-bday.png"),
    CardModel(7, [CardCategory.christmas], Color(0xFF6188b1), "Birthday",
        "assets/cards/hohoho.png"),
    CardModel(8, [CardCategory.christmas], Color(0xFF6188b1), "Birthday",
        "assets/cards/sock-xmas.png"),
  ];
}

enum CardCategory { birthday, christmas, general, congratulations }
