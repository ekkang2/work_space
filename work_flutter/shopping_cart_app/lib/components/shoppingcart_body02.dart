import 'package:flutter/material.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        // 임시 ListView 사용
        child: Column(
          children: [
            _buildBodyNameAndPrice(),
            _buildBodyRatingAndReviewCount(),
            _buildBodyColorOptions(),
            SizedBox(height: 30),
            _buildBodyButton(),
          ],
        ),
      ),
    );
  } // end of build

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Urban Soft AL 10.0',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$ 699',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // 2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text('review '),
          Text(
            '(26)',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }

  // 3. 색상 옵션 선택
  Widget _buildBodyColorOptions() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color Options',
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              _buildColorOption(Colors.black),
              _buildColorOption(Colors.green),
              _buildColorOption(Colors.orange),
              _buildColorOption(Colors.grey),
              _buildColorOption(Colors.white),
            ],
          )
        ],
      ),
    );
  }

  // 4. 색상 옵션 위젯을 만드는 함수
  Widget _buildColorOption(Color color) {
    return Padding(
      padding: EdgeInsets.only(right: 10, top: 6),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          // Positioned 위젯 활용
          Positioned(
              top: 3,
              left: 3,
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              )),
        ],
      ),
    );
  }

  // 5. 버튼 만들기
  Widget _buildBodyButton() {
    return Align(
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(300, 45)),
          child: Text(
            "Add to Cart",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
} // end of body
