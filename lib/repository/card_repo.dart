import 'package:flutter/material.dart';
import 'package:todoapp/models/card_models.dart';

class CardRepo {
  Future<List<CardModel>> getAllCards() async {
    return Future.delayed(Duration(milliseconds: 300), () {
      return CardModel.cards;
    });
  }

  Future<CardModel> getCard(int Id) async {
    return Future.delayed(Duration(milliseconds: 300), () {
      return CardModel.cards.where((Card) => Card.id == Id).first;
    });
  }
}
