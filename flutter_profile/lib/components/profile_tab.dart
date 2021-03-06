import 'package:flutter/material.dart';

// TabBar 탭할때마다 화면 동적으로 변해야하므로, 그림을 다시그려야 하므로
// stateful 위젯 사용
class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
// 상태가 있는 위젯은 상태값들을 보존하고 추적할 수 있다.
// with SingleTickerProviderStateMixin  - 다형성
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildTabBar(), Expanded(child: _buildTabBarView())],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        // List<Widget>
        Tab(icon: Icon(Icons.sailing_outlined)),
        Tab(icon: Icon(Icons.add_a_photo_outlined)),
      ],
    );
  }

// 현재 선택된 탭에 해당하는 화면 표시하는 위젯
  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: 40,
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          },
        ),
        Container(
          color: Colors.orange,
        )
      ],
    );
  }
} // end of _ProfileTabState
