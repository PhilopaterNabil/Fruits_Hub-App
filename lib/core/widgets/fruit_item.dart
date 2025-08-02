import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.fogGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            // top: 0,
            // right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                productEntity.imageUrl == null
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text(
                            'No Image Available',
                            style: AppTextStyles.font13LightGreyBold,
                          ),
                        ),
                      )
                    : Flexible(
                        child: CustomNetworImage(imageUrl: productEntity.imageUrl!),
                      ),
                Spacer(),
                ListTile(
                  title: Text(
                    productEntity.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${productEntity.price} جنيه',
                            style: AppTextStyles.font13LightGreyBold
                                .copyWith(color: AppColors.brightOrangeColor),
                          ),
                          TextSpan(
                            text: ' / الكيلو',
                            style: AppTextStyles.font13AccentGreenSemiBold
                                .copyWith(color: AppColors.brightOrangeColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.greenColor,
                    child: Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 19),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
