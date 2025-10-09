import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';

class FruitItem extends StatefulWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  State<FruitItem> createState() => _FruitItemState();
}

class _FruitItemState extends State<FruitItem> {
  @override
  initState() {
    context.read<ProductsCubit>().getProducts();
    
    super.initState();
  }

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
                widget.productEntity.imageUrl == null
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          color: AppColors.lightGreyColor,
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Flexible(
                        child: CustomNetworkImage(imageUrl: widget.productEntity.imageUrl!),
                      ),
                Spacer(),
                ListTile(
                  title: Text(
                    widget.productEntity.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${widget.productEntity.price} جنيه',
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
