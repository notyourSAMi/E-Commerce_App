import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/app_brand_card.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brands/all_brands.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/category_tabs.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/tabbar.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text('Store'),
          actions: [
            AppCartCounterIcon(
              onPressed: () {},
              iconColor: darkMode ? AppColors.white : AppColors.black,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: darkMode ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      const AppSearchContainer(
                        text: 'Search in Store',
                        padding: EdgeInsets.zero,
                        showBorder: true,
                        showBackground: false,
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                      AppSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems / 1.5,
                      ),
                      AppGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const AppBrandCard(
                              showBorder: true,
                            );
                          })
                    ],
                  ),
                ),
                bottom: const AppTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(children: [
            AppCategoryTab(),
            AppCategoryTab(),
            AppCategoryTab(),
            AppCategoryTab(),
            AppCategoryTab(),

          ]),
        ),
      ),
    );
  }
}

