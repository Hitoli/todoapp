import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/models/card_models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              SearchField(),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {},
                child: CategoryFilter(
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CardGrid()
            ],
          ),
        ),
      )),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF5F4F8),
          hintText: "Search Card",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none)),
    );
  }
}

extension CardCategoryextn on CardCategory {
  String onCategory() =>
      name[0].toUpperCase() + name.substring(1, name.length).toLowerCase();
}

class CategoryFilter extends StatelessWidget {
  final bool isSelected;
  const CategoryFilter({super.key, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map(
            (e) => Container(
              margin: EdgeInsets.only(left: 12.0, right: 12.0),
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
              decoration: BoxDecoration(
                  color: isSelected ? Color(0xFF252B5C) : Color(0xFFE1E1E8),
                  borderRadius: BorderRadius.circular(16.0)),
              child: Center(
                child: Text(e.onCategory(),
                    style: GoogleFonts.merriweather(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardGrid extends StatelessWidget {
  const CardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return SizedBox(
      height: Size.height * 0.6,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0),
          itemBuilder: ((context, index) {
            return Cards(
                showLabel: true,
                showValue: true,
                width: 100,
                card: CardModel.cards.first);
          })),
    );
  }
}

class Cards extends StatelessWidget {
  final bool showLabel;
  final bool showValue;
  final double width;
  final CardModel card;

  const Cards(
      {super.key,
      required this.card,
      required this.showLabel,
      required this.showValue,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Image.asset("assets/cards/cake-bday.png"),
          SizedBox(
            height: 4,
          ),
          Text("Cards",
              style: GoogleFonts.merriweather(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 16)))
        ],
      ),
    );
  }
}
