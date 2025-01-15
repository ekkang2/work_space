import 'package:flutter/material.dart';
import 'profile_header.dart';

//////////////////////////////////////////////////////////////
// 상태가 있는 위젯을 만들어 보자.
// 1. StatefulWidget 위젯을 상속 받았다.
// 두 개의 클래스가 한 묶음이다.

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of ProfileTab

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 멤버 변수
  // TabController는 TabBar 와 TabBarView 를 동기화하는 컨트롤러 이다
  TabController? _tabController;

  // 단! 한 번 호출이 되는 메서드이다.
  @override
  void initState() {
    // 내부에서 값을 초기화 해야 한다면?  initState에 오세여
    super.initState();
    print('1. 프로필 탭 내부 클래스 init 호출 ');
    // length 는 탭의 개수를 의미한다.
    // vsync 는 자연스러운 애니메이션 전환을 위해서 TickerProvider 를
    // 지원한다.
    _tabController = TabController(length: 2, vsync: this);
  }

  // build 메서드는 기본적으로 그림을 그릴 때, 호출이 된다.
  @override
  Widget build(BuildContext context) {
    // 지역 변수
    print('2. 프로필 탭 내부 클래스 build 메서드 호출');

    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: _buildTabBarView(),
        )
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 1, // 열(컬럼) 사이의 간격을 10 으로
              mainAxisSpacing: 1, // 행(로우) 사이의 간격 설정
              crossAxisCount: 3,
            ),
            itemCount: 30,
            itemBuilder: (context, index) {
              // 이미지
              return Image.network('https://picsum.photos/id/${index}/200/200');
            }),

        // 꾸며주세요 2번째 탭
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 1, // 열(컬럼) 사이의 간격을 10 으로
              mainAxisSpacing: 1, // 행(로우) 사이의 간격 설정
              crossAxisCount: 1,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              // 이미지
              return Column(
                children: [
                  Container(
                    height: 400,
                    child: Column(
                      children: [
                        ImageCard(),
                        Container(
                          child: Column(
                            children: [
                              Image.network(
                                'https://picsum.photos/id/${index + 20}/400/300',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [Icon(Icons.favorite_border)],
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
        // 중간 매개체로 연결
        controller: _tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.grid_view_outlined),
          ),
          Tab(
            icon: Icon(Icons.filter_list),
          ),
        ]);
  }
} // end _ProfileTabState
//////////////////////////////////////////////////////////////

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildMiniProfile(),
    );
  }

  Row _buildMiniProfile() {
    return Row(
      children: [
        SizedBox(
            width: 50,
            height: 50,
            child: Expanded(child: Image.asset('assets/avatar.png'))),
        _ProfileInfo(),
      ],
    );
  }
}

Column _ProfileInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '황수빈',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        '웹/앱 백엔드 개발자',
        style: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
