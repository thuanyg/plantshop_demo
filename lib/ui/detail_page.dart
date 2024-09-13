import 'package:flutter/material.dart';
import 'package:plant_shop_demo/utils/app_style.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFE),
      body: _buildBodyPage(context),
    );
  }

  Widget _buildBodyPage(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 387,
                child: Stack(
                  children: [
                    Container(
                      height: 307,
                      color: const Color(0xFFE8EDEB),
                    ),
                    Positioned(
                      top: 50,
                      left: MediaQuery.of(context).size.width / 2 - 144 / 2,
                      child: Image.asset(
                        "assets/images/img_plant1.png",
                        height: 380,
                        scale: 0.75,
                        width: 144,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cây Hạnh phúc nội thất",
                              style: AppStyle.detailTitle,
                            ),
                            Text(
                              "♥ Broadleaf evergreen",
                              style: AppStyle.subTitle,
                            ),
                          ],
                        ),
                        Container(
                          height: 24,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xff014643), width: 1.5),
                          ),
                          child: const Text(
                            "Indoor",
                            style: TextStyle(
                              color: Color(0xff014643),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade200,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Botanical Name", style: AppStyle.subTitle),
                            Text("Dior Channel", style: AppStyle.cardTitle),
                          ],
                        ),
                        const VerticalDivider(
                          thickness: 1,
                          width: 50,
                          color: Colors.black,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nick Name", style: AppStyle.subTitle),
                            Text("Thuan.HT", style: AppStyle.cardTitle),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade200,
                    ),
                    Text(
                      "Description",
                      style: AppStyle.detailTitle,
                    ),
                    const Text(
                      "Nếu bạn đang tìm kiếm một loại cây cảnh để trang trí nội thất gia đình hoặc nơi làm việc thì cây hạnh phúc là một lựa chọn không thể bỏ qua. Là loại cây trồng chịu nắng bán phần, có sức sống mãnh liệt và có thể sinh trưởng tốt trong môi trường thiếu sáng, cây hạnh phúc hiện đang được nhiều gia chủ dùng làm cây trồng trong nhà. Bên cạnh ý nghĩa mang lại như chính cái tên của nó, cây hạnh phúc còn là loại cây phong thuỷ. Trồng cây hạnh phúc trong nhà mang đến niềm tin về cuộc sống hạnh phúc, sung túc và một tương lai tương sáng hơn cho cả gia đình. Bên cạnh việc trang trí, cây hạnh phúc cũng là loại cây phong thuỷ. Cây hạnh phúc là loại cây thân gỗ, có nguồn gốc từ vùng Nam Âu và Tây Á. Trong môi trường tự nhiên, loài cây này có thể cao đến 3m. Thân cây có màu nâu đen, xù xì. Lá cây có màu xanh non và đậm dần khi trưởng thành, bề mặt lá bóng loáng. Cây hạnh phúc thường ra hoa vào mùa xuân và mùa hè, hoa có màu trắng. Sau khi ra hoa, cây sẽ ra quả hình đậu. Du nhập vào Việt Nam trong vài năm trở lại đây, cây hạnh phúc hiện được nhiều gia chủ lựa chọn để trồng trực tiếp ở sân vườn hoặc trồng trong chậu. ",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        letterSpacing: .5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 18,
          right: 18,
          child: Container(
            height: 58,
            decoration: BoxDecoration(
              color: const Color(0xff004643),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "35\$",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                VerticalDivider(
                  width: 16,
                  thickness: 1,
                  indent: 6,
                  endIndent: 6,
                  color: Colors.white,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Add to cart",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(width: 36),
              ],
            ),
          ),
        )
      ],
    );
  }
}
