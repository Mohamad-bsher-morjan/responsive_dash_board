import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items._list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoList(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),

                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting System',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout Account',
                    image: Assets.imagesLogout,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
