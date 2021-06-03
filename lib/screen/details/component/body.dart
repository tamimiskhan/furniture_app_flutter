import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/constants.dart';
import 'package:furniture_app_flutter/models/product.dart';
import 'package:furniture_app_flutter/screen/details/component/product_image.dart';

import 'chat_and_add_to_cart.dart';
import 'list_of_color.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  //Poducts poster
                  Hero(
                    child: ProductPoster(
                      size: size,
                      image: product.image,
                    ),
                    tag: '${product.id}',
                  ),
                  //List of color
                  ListOfColor(),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
            ChatAndAddToChat(),
          ],
        ),
      ),
    );
  }
}
