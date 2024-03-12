import 'package:flutter/material.dart';
import 'package:food_ordering_flutter/Food%20Ordering%20Website/Body/product_detail.dart';
import 'package:food_ordering_flutter/Food%20Ordering%20Website/Body/send_feedback.dart';
import 'package:food_ordering_flutter/Food%20Ordering%20Website/model/product_model.dart';
import 'package:food_ordering_flutter/Food%20Ordering%20Website/screen/responsive.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.white,
        constraints: const BoxConstraints(maxWidth: 1233),
        child: Column(
          children: [
            Responsive(
              mobile: productDetail(
                  crossAxisCount: size.width < 650 ? 2 : 3,
                  aspectRation: size.width < 650 ? 0.85 : 1.1),
              desktop: productDetail(
                  crossAxisCount: size.width < 650 ? 2 : 3,
                  aspectRation: size.width < 650 ? 0.85 : 1.1),
            ),
            SizedBox(
              height: 40,
            ),
            SendFeedBack(),
          ],
        ),
      ),
    );
  }
}

class productDetail extends StatelessWidget {
  const productDetail({
    super.key,
    this.crossAxisCount = 3,
    this.aspectRation = 1.1,
  });

  final int crossAxisCount;
  final double aspectRation;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: aspectRation),
        itemBuilder: (context, index) => ProductDetail(
              press: () {},
              product: products[index],
            ),
        itemCount: products.length);
  }
}
