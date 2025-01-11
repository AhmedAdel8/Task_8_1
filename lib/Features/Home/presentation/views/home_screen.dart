import 'package:flutter/material.dart';
import 'package:last_8/Features/Home/presentation/views/widgets/card_categorys.dart';
import 'package:last_8/Features/Jewelery/presentation/views/Jewelery_Screen.dart';
import 'package:last_8/Features/electronics/presentation/views/electronics_screen.dart';
import 'package:last_8/Features/men/presentation/views/men_Screen.dart';
import 'package:last_8/Features/women/presentation/views/women_Screen.dart';
import 'package:last_8/core/style/string_app.dart';
import 'package:last_8/core/utils/assets.dart';
import 'package:last_8/core/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
          child: Column(
            spacing: 20,
            children: [
              CardCategorys(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ElectronicsScreen(endpoint: "electronics");
                      },
                    ),
                  );
                },
                text: "Electronics",
                image: AssetsData.categorylapimage,
              ),
              CardCategorys(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return JeweleryScreen(endpoint: "jewelery");
                      },
                    ),
                  );
                },
                text: "Jewelery",
                image: AssetsData.categoryJeweleryimage,
              ),
              CardCategorys(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MenScreen(endpoint: "men's%20clothing");
                      },
                    ),
                  );
                },
                text: "Men Clothing",
                image: AssetsData.categoryMenClothingimage,
              ),
              CardCategorys(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WomenScreen(endpoint: "women's%20clothing");
                      },
                    ),
                  );
                },
                text: "Women Clothing",
                image: AssetsData.categoryWomenClothinglapimage,
              ),
            ],
          ),
        ),
      ),
      appBar: customAppBar(text: StringApp.titleappbarHome),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          bottom: 30,
          right: 11,
          left: 11,
        ),
        child: Column(
          spacing: 20,
          children: [
            CardCategorys(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ElectronicsScreen(endpoint: "electronics");
                    },
                  ),
                );
              },
              text: "Electronics",
              image: AssetsData.categorylapimage,
            ),
            CardCategorys(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return JeweleryScreen(endpoint: "jewelery");
                    },
                  ),
                );
              },
              text: "Jewelery",
              image: AssetsData.categoryJeweleryimage,
            ),
            CardCategorys(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MenScreen(endpoint: "men's%20clothing");
                    },
                  ),
                );
              },
              text: "Men Clothing",
              image: AssetsData.categoryMenClothingimage,
            ),
            CardCategorys(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WomenScreen(endpoint: "women's%20clothing");
                    },
                  ),
                );
              },
              text: "Women Clothing",
              image: AssetsData.categoryWomenClothinglapimage,
            ),
          ],
        ),
      ),
    );
  }
}
