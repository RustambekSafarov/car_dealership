import 'package:car_dealership/style/button_style.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF05141F),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 80,
              bottom: 80,
              left: 80,
              right: 80,
            ),
            child: Text(
              '''Saytda joylashgan Kia brendi mahsulotlarining narxi haqida ma'lumot faqat axborot xususiyatiga ega. Ko'rsatilgan narxlar Kia dilerlarining haqiqiy narxlaridan farq qilishi mumkin. Kia mahsulotlariga aktual narxlar haqida batafsil ma'lumot olish uchun Kia dileriga murojaat qiling. Kia brendining har qanday mahsulotini sotib olish yakka tartibdagi oldi-sotdi shartnomasi shartlariga muvofiq amalga oshiriladi. Taqdim etilgan avtomobil tasvirlari xaqiqiysidan farq qilishi mumkin.''',
              style: TextStyle(fontSize: 17, color: Colors.white60, letterSpacing: 0.5, height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(80),
            child: Divider(
              color: Colors.grey[600],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 80, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Modellar',
                        style: buttonTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Konfigurator',
                        style: buttonTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Maxsus takliflar',
                        style: buttonTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dilerlar',
                        style: buttonTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Test drayvga yozilish',
                        style: buttonTitleStyle,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kia brendi',
                      style: buttonTitleStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Kia brendi',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tarix',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Kia worldwide',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Qayta aloqa',
                        style: footerTitleStyle,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kia O\'zbekistond',
                      style: buttonTitleStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Biz haqimizda',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dilerlar',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Qanday qilib diler bo\'lish mumkin',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Diler qo\'ng\'irog\'iga buyurtma berish',
                        style: footerTitleStyle,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Innovatsiyalar',
                      style: buttonTitleStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dizayn',
                        style: footerTitleStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Texnologiyalar',
                        style: footerTitleStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kia ishonch telefoni',
                            style: footerTitleStyle,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '1333',
                              style: buttonTitleStyle,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kia axborot liniyasi',
                            style: footerTitleStyle,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '+998 71 215-70-07',
                              style: buttonTitleStyle,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kia ijtimoiy tarmoqlarda',
                            style: footerTitleStyle,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(LineAwesomeIcons.youtube),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(LineAwesomeIcons.instagram),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(LineAwesomeIcons.facebook),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(LineAwesomeIcons.telegram),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 80, left: 80, top: 80, right: 400),
            child: Text(
              '''dat"Roodell"MCHJ O 'zbekiston Respublikasi hududida O'zbekiston Respublikasi qonunchiligiga muvofiq faoliyat ko'rsatadi.Sotilayotgan tovarlar O 'zbekiston Respublikasi hududida olinishi mumkin. O'zbekiston Respublikasidan tashqarida bo 'lgan sub'ektlarning xarid qilish iste 'moli monitoring qilinmaydi. O'zbekiston Respublikasi hududida muvofiq modellar va butliklar va ularning mavjudligi, narxlari, foydali xarid va sotib olish shartlari haqidagi ma 'lumotlar Kia dilerlarida mavjud. Tovar sertifikatlangan. Ommaviy oferta hisoblanmaydi.a''',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
