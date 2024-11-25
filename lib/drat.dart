import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 5459,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 1920,
              top: 187,
              height: 40,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 0,
                    height: 40,
                    child: Container(
                      width: 1920,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xffffe7ef),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 638,
                    width: 670,
                    top: 3,
                    height: 33,
                    child: Container(
                      width: 670,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 0,
                            top: 8,
                            child: Text(
                              '25% OFF - sitewide - click here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                  fontFamily: 'AvenirNextCyr-Bold',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Positioned(
                            left: 384,
                            top: 8,
                            child: Text(
                              'Free Shipping \$100 min - click here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                  fontFamily: 'AvenirNextCyr-Bold',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 302,
                            width: 33,
                            top: 0,
                            height: 33,
                            child: Container(
                              width: 33,
                              height: 33,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    width: 33,
                                    top: 0,
                                    height: 33,
                                    child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 7,
                                    top: 9,
                                    child: Text(
                                      'or',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Bold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -3,
              width: 1923,
              top: 982,
              height: 144,
              child: Stack(
                children: [
                  const Positioned(
                    left: 3,
                    width: 1920,
                    top: 48,
                    height: 21,
                    child: Text(
                      'Our delicious, limited-edition collection',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    width: 1923,
                    top: 0,
                    height: 37,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 1923,
                          top: 0,
                          child: Text(
                            'Shop Our COLLECTION',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 30,
                                color: Color(0xff000000),
                                fontFamily: 'AvenirNextCyr-Bold',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 872,
                    width: 171,
                    top: 98,
                    height: 46,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 171,
                          top: 0,
                          height: 46,
                          child: Container(
                            width: 171,
                            height: 46,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff898989), width: 2),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Shop All',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontFamily: 'AvenirNextCyr-Bold',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 765,
              width: 390,
              top: 1174,
              height: 316,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 390,
                    top: 0,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 390,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 390,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 84.324,
                          width: 442.703,
                          top: 28.167,
                          height: 359.131,
                          child: Image.asset(
                            'images/image_190726453.png',
                            width: 442.703,
                            height: 359.131,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 390,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 390,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          width: 390,
                          top: 143.476,
                          height: 66.524,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 390,
                                top: 0,
                                height: 28.167,
                                child: Text(
                                  'men’s cologne',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 26,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 390,
                                top: 50.524,
                                height: 16,
                                child: Text(
                                  'Shop now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Medium',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 1185,
              width: 391,
              top: 1518,
              height: 316,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 391,
                    top: 0,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 391,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 391,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 84.541,
                          width: 443.838,
                          top: 28.167,
                          height: 359.131,
                          child: Image.asset(
                            'images/image_190726521.png',
                            width: 443.838,
                            height: 359.131,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 391,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 391,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          width: 391,
                          top: 143.476,
                          height: 66.524,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 391,
                                top: 0,
                                height: 28.167,
                                child: Text(
                                  'best sellers',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 26,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 391,
                                top: 50.524,
                                height: 16,
                                child: Text(
                                  'Shop now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Medium',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 1186,
              width: 390,
              top: 1174,
              height: 316,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 390,
                    top: 0,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 390,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 390,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 84.324,
                          width: 442.703,
                          top: 28.167,
                          height: 359.131,
                          child: Image.asset(
                            'images/image_190726470.png',
                            width: 442.703,
                            height: 359.131,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 390,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 390,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          width: 390,
                          top: 143.476,
                          height: 66.524,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 390,
                                top: 0,
                                height: 28.167,
                                child: Text(
                                  'Haircare',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 26,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 390,
                                top: 50.524,
                                height: 16,
                                child: Text(
                                  'Shop now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Medium',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 344,
              width: 390,
              top: 1518,
              height: 316,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 390,
                    top: 0,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 390,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 390,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 84.324,
                          width: 442.703,
                          top: 28.167,
                          height: 359.131,
                          child: Image.asset(
                            'images/image_190726487.png',
                            width: 442.703,
                            height: 359.131,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 390,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 390,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          width: 390,
                          top: 143.476,
                          height: 66.524,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 390,
                                top: 0,
                                height: 28.167,
                                child: Text(
                                  'skincare',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 26,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 390,
                                top: 50.524,
                                height: 16,
                                child: Text(
                                  'Shop now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Medium',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 343,
              width: 391,
              top: 1174,
              height: 316,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 391,
                    top: 0,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 391,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 391,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 84.541,
                          width: 443.838,
                          top: 28.167,
                          height: 359.131,
                          child: Image.asset(
                            'images/image_190726424.png',
                            width: 443.838,
                            height: 359.131,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 391,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 391,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          width: 391,
                          top: 143.476,
                          height: 66.524,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 391,
                                top: 0,
                                height: 28.167,
                                child: Text(
                                  'Women’s perfume',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 26,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 391,
                                top: 50.524,
                                height: 16,
                                child: Text(
                                  'Shop now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Medium',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 764,
              width: 391,
              top: 1518,
              height: 316,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 391,
                    top: 0,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 391,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 391,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 84.541,
                          width: 443.838,
                          top: 28.167,
                          height: 359.131,
                          child: Image.asset(
                            'images/image_190726504.png',
                            width: 443.838,
                            height: 359.131,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 391,
                          top: 0,
                          height: 316,
                          child: Container(
                            width: 391,
                            height: 316,
                            decoration: const BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          width: 391,
                          top: 143.476,
                          height: 66.524,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 391,
                                top: 0,
                                height: 28.167,
                                child: Text(
                                  'gift sets',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 26,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 391,
                                top: 50.524,
                                height: 16,
                                child: Text(
                                  'Shop now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontFamily: 'AvenirNextCyr-Medium',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 1920,
              top: 4807,
              height: 651,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 0,
                    height: 380,
                    child: Container(
                      width: 1920,
                      height: 380,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 1103,
                    width: 271,
                    top: 190,
                    height: 55,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 271,
                          top: 0,
                          height: 55,
                          child: Container(
                            width: 271,
                            height: 55,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  color: const Color(0xffe5e5e5), width: 1),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/image_190729033.png',
                                width: 55.577,
                                height: 34,
                              ),
                              const SizedBox(width: 20),
                              const SizedBox(
                                width: 162,
                                height: 35,
                                child: Text(
                                  'subscription club',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      fontFamily: 'AvenirNextCyr-Regular',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 96,
                    top: 48,
                    child: Text(
                      'SHOP BY DEPARTMENT',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontFamily: 'AvenirNextCyr-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 450,
                    top: 48,
                    child: Text(
                      'CUSTOMER SUPPORT',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontFamily: 'AvenirNextCyr-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 898,
                    top: 52,
                    child: Text(
                      'MY ACCOUNT',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontFamily: 'AvenirNextCyr-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 96,
                    top: 102,
                    child: Text(
                      'Perfumes\nWomen\'s Perfume\nMen\'s Cologne\nHaircare\nBoutiques\n50% Off\nSamples\nSkincare\nAromatherapy',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 450,
                    top: 102,
                    child: Text(
                      'Gift Certificates\nGift Certificate Balance\nAccessibility Policy\nReturn Policy\nSecurity Pledge\nTerms of Use\nShipping Rates\n100% Genuine',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 650,
                    top: 102,
                    child: Text(
                      'Wholesale Information\nAffiliate Program\nSitemap\nPerfume Coupons\nCareers',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 898,
                    top: 102,
                    child: Text(
                      'My Account\nRegister Now\nOrder Status\nReminder Club\nSign In',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 266,
                    top: 102,
                    child: Text(
                      'Best Sellers\nClearance\nFor Kids\nMakeup\nCandles\nNew Arrivals\nMini\nHard to Find',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 1103,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image1_190728942.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1173,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image2_190728943.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1243,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image3_190728944.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1313,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image4_190728945.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1383,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image5_190728946.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1453,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image6_190728947.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1523,
                    width: 40,
                    top: 52,
                    height: 40,
                    child: Image.asset(
                      'images/image7_190728948.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 1103,
                    width: 151,
                    top: 135,
                    height: 24,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 52,
                          width: 100,
                          top: 0,
                          height: 24,
                          child: Text(
                            'Change Country',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 13,
                                color: Color(0xff000000),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 33,
                          top: 0,
                          height: 24,
                          child: Image.asset(
                            'images/image_190728951.png',
                            width: 33,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 424,
                    height: 228,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 1920,
                          top: 0,
                          height: 228,
                          child: Container(
                            width: 1920,
                            height: 228,
                            decoration: const BoxDecoration(
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 514,
                          top: 28,
                          child: Text(
                            'Customer Service Code: 0A',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Color(0xffffffff),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Positioned(
                          left: 732,
                          top: 28,
                          child: Text(
                            'Privacy Policy   |   CA Privacy Notice',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Color(0xffffffff),
                                fontFamily: 'Mulish-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Positioned(
                          left: 990,
                          top: 28,
                          child: Text(
                            'Entire contents Copyright © 1997-2023. PerfumeShop.com, Inc.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Color(0xffffffff),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Positioned(
                          left: 904,
                          top: 133,
                          child: Text(
                            'All Rights Reserved.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12,
                                color: Color(0xffe5e5e5),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Positioned(
                          left: 597,
                          top: 76,
                          child: Text(
                            'PerfumeShop.com is an independent retailer carrying genuine brand name Perfumes, skincare, haircare, candles and makeup.\nPerfumeShop and PerfumeShop.com are trademarks of PerfumeShop, Inc. and are Registered in the US Patent & Trademark Office.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12,
                                color: Color(0xffe5e5e5),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 772,
                          width: 375.294,
                          top: 175,
                          height: 26,
                          child: Image.asset(
                            'images/image_190728965.png',
                            width: 375.294,
                            height: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 1920,
              top: 4543,
              height: 264,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 960,
                    top: 0,
                    height: 264,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 960,
                          top: 0,
                          height: 264,
                          child: Container(
                            width: 960,
                            height: 264,
                            decoration: const BoxDecoration(
                              color: Color(0xfff5f6f6),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 96,
                          width: 760,
                          top: 48,
                          height: 168,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'SIGN up for Special Offers and Promotions',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                      fontFamily: 'AvenirNextCyr-Bold',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 286,
                                top: 47,
                                height: 47,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 286,
                                      top: 0.272,
                                      height: 46,
                                      child: Container(
                                        width: 286,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      width: 343,
                                      top: 0,
                                      height: 47,
                                      child: Text(
                                        'your Email',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff898989),
                                            fontFamily: 'AvenirNextCyr-Regular',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      width: 286,
                                      top: 46.146,
                                      height: 1,
                                      child: Container(
                                        width: 286,
                                        height: 1,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff000000),
                                              width: 2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 301,
                                width: 286,
                                top: 47,
                                height: 47,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 286,
                                      top: 0.272,
                                      height: 46,
                                      child: Container(
                                        width: 286,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 11,
                                      width: 344,
                                      top: 0,
                                      height: 47,
                                      child: Text(
                                        'your Mobile',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff898989),
                                            fontFamily: 'AvenirNextCyr-Regular',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      width: 286,
                                      top: 46.146,
                                      height: 1,
                                      child: Container(
                                        width: 286,
                                        height: 1,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff000000),
                                              width: 2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                left: 0,
                                width: 761,
                                top: 120,
                                height: 48,
                                child: Text(
                                  'By entering your email and clicking “subscribe”, you consent to receive marketing emails from e.l.f. You can unsubscribe at any time through the unsubscribe link in each email. See our Privacy Notice for more details, including how your personal information is used and shared.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12,
                                      color: Color(0xff000000),
                                      fontFamily: 'Mulish-Regular',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 699.5,
                    width: 171,
                    top: 96,
                    height: 46,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 171,
                          top: 0,
                          height: 46,
                          child: Container(
                            width: 171,
                            height: 46,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff383838), width: 2),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sign Up',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontFamily: 'AvenirNextCyr-Bold',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 960,
                    width: 960,
                    top: 0,
                    height: 264,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 960,
                          top: 0,
                          height: 264,
                          child: Container(
                            width: 960,
                            height: 264,
                            decoration: const BoxDecoration(
                              color: Color(0xfff5f6f6),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 90,
                          width: 150,
                          top: 122,
                          height: 91,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Visit Us',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                      fontFamily: 'AvenirNextCyr-Bold',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 28,
                                child: Text(
                                  'PerfumeShop, Inc.789 Ocean Ave.Coral City, CA 90210',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      color: Color(0xff383838),
                                      fontFamily: 'AvenirNextCyr-Regular',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          left: 90,
                          width: 154,
                          top: 51,
                          height: 51,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Need help? ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                      fontFamily: 'AvenirNextCyr-Bold',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 30,
                                child: Text(
                                  'info@perfumeshop.com',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      color: Color(0xff383838),
                                      fontFamily: 'AvenirNextCyr-Regular',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 264,
                    height: 1,
                    child: Container(
                      width: 1920,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffcbcbcb), width: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 960,
                    width: 1,
                    top: 0,
                    height: 264,
                    child: Image.asset(
                      'images/image_190728809.png',
                      width: 1,
                      height: 264,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 0,
                    height: 1,
                    child: Container(
                      width: 1920,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffcbcbcb), width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 1920,
              top: 4497,
              height: 45,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 0,
                    height: 45,
                    child: Container(
                      width: 1920,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Color(0xff4d2952),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 126, top: 34, right: 126, bottom: 34),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190731302.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Free Delivery & Returns*',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190731430.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Online Self-Service',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190731558.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  '100% Genuine Guaranteed',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190731683.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Secure Payment',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190731804.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  '100% authentic products',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 1920,
              top: 4497,
              height: 45,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 0,
                    height: 45,
                    child: Container(
                      width: 1920,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Color(0xff4d2952),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 126, top: 34, right: 126, bottom: 34),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190728198.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Free Delivery & Returns*',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190728326.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Online Self-Service',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190728454.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  '100% Genuine Guaranteed',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190728579.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Secure Payment',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/image_190728700.png',
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  '100% authentic products',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13,
                                      color: Color(0xfff5f6f6),
                                      fontFamily: 'AvenirNextCyr-Demi',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 343,
              width: 1234,
              top: 245,
              height: 387,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1234,
                    top: 0,
                    height: 387,
                    child: Container(
                      width: 1234,
                      height: 387,
                      decoration: const BoxDecoration(
                        color: Color(0xffeedde3),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 560,
                    width: 45,
                    top: 131.721,
                    height: 57,
                    child: Image.asset(
                      'images/image1_405437.png',
                      width: 45,
                      height: 57,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 143,
                    width: 45,
                    top: 271,
                    height: 56,
                    child: Image.asset(
                      'images/image2_405438.png',
                      width: 45,
                      height: 56,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 29,
                    width: 50,
                    top: 278.721,
                    height: 61,
                    child: Image.asset(
                      'images/image3_405439.png',
                      width: 50,
                      height: 61,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 25,
                    width: 60,
                    top: 42.721,
                    height: 65,
                    child: Image.asset(
                      'images/image4_405441.png',
                      width: 60,
                      height: 65,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 527,
                    width: 51,
                    top: 313.721,
                    height: 60,
                    child: Image.asset(
                      'images/image5_405442.png',
                      width: 51,
                      height: 60,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 13,
                    width: 426.616,
                    top: -177,
                    height: 329.888,
                    child: Image.asset(
                      'images/image6_405443.png',
                      width: 426.616,
                      height: 329.888,
                    ),
                  ),
                  const Positioned(
                    left: 197,
                    top: 121,
                    child: Text(
                      'VARIETY\nGIFT SETS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 64,
                          color: Color(0xff000000),
                          fontFamily: 'YesevaOne-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 255,
                    width: 210,
                    top: 88,
                    height: 17,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Find the Perfect Gift in Our',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 269,
                    width: 183,
                    top: 281,
                    height: 46,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 183,
                          top: 0,
                          height: 46,
                          child: Container(
                            width: 183,
                            height: 46,
                            decoration: const BoxDecoration(
                              color: Color(0xffbe5b75),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Shop Now',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontFamily: 'AvenirNextCyr-Bold',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 600,
                    width: 634,
                    top: 0,
                    height: 387,
                    child: Image.asset(
                      'images/image7_1910420.png',
                      width: 634,
                      height: 387,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 290,
              width: 1340,
              top: 419,
              height: 40,
              child: Image.asset(
                'images/image1_3049167.png',
                width: 1340,
                height: 40,
              ),
            ),
            Positioned(
              left: 288,
              width: 1340,
              top: 3831,
              height: 571,
              child: Stack(
                children: [
                  const Positioned(
                    left: -288,
                    width: 1920,
                    top: 0,
                    child: Text(
                      'best sellers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          color: Color(0xff000000),
                          fontFamily: 'AvenirNextCyr-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 52,
                    width: 1237,
                    top: 83,
                    height: 488,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727365.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190727325.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Jo Malone Vetiver & Go...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Ipsa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-BlackItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Luminizing Clay',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 314,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727451.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190727372.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Armaf Passion',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Armaf',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-LightItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Eau De Parfum',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 942,
                          width: 295,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 295,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 295,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258.877,
                                width: 19.065,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727489.png',
                                  width: 19.065,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21.071,
                                width: 252.857,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190727428.png',
                                  width: 252.857,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Bvlgari Extreme',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Ipsa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-BlackItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Luminizing Clay',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 628,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727470.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190727400.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Jo Malone Vetiver & Go...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Bvlgari',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-LightItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Eau De Toilette',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1340,
                    top: 277,
                    height: 40,
                    child: Image.asset(
                      'images/image_190727205.png',
                      width: 1340,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 288,
              width: 1340,
              top: 2594,
              height: 571,
              child: Stack(
                children: [
                  const Positioned(
                    left: -288,
                    width: 1920,
                    top: 0,
                    child: Text(
                      'NEW Arrivals!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          color: Color(0xff000000),
                          fontFamily: 'AvenirNextCyr-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 52,
                    width: 1237,
                    top: 83,
                    height: 488,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190726990.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726872.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Jo Malone Vetiver & Go...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Ipsa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-BlackItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Luminizing Clay',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 314,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727009.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726900.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Armaf Passion',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Armaf',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-LightItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Eau De Parfum',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 942,
                          width: 295,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 295,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 295,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258.877,
                                width: 19.065,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727047.png',
                                  width: 19.065,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21.071,
                                width: 252.857,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726956.png',
                                  width: 252.857,
                                  height: 229.455,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Bvlgari Extreme',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Ipsa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-BlackItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Luminizing Clay',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 628,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190727028.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726928.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Jo Malone Vetiver & Go...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Bvlgari',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-LightItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Eau De Toilette',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1340,
                    top: 277,
                    height: 40,
                    child: Image.asset(
                      'images/image_190726756.png',
                      width: 1340,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 343,
              width: 1234,
              top: 699,
              height: 223,
              child: Container(
                width: 1234,
                height: 223,
                decoration: const BoxDecoration(
                  color: Color(0xfffcd0cc),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 953,
                      width: 476.57,
                      top: -92,
                      height: 651.051,
                      child: Image.asset(
                        'images/image1_2017968.png',
                        width: 476.57,
                        height: 651.051,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: 640,
                      width: 400.932,
                      top: -83,
                      height: 627.533,
                      child: Image.asset(
                        'images/image2_2018001.png',
                        width: 400.932,
                        height: 627.533,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: -164,
                      width: 1085.149,
                      top: 52.999,
                      height: 1085.149,
                      child: Image.asset(
                        'images/image3_2017969.png',
                        width: 1085.149,
                        height: 1085.149,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: 96,
                      width: 234,
                      top: 122.926,
                      height: 46,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            width: 234,
                            top: 0,
                            height: 46,
                            child: Container(
                              width: 234,
                              height: 46,
                              decoration: const BoxDecoration(
                                color: Color(0xff4d2952),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(45),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'SEarch for brand',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      left: 338,
                      width: 838,
                      top: 41,
                      child: Text(
                        'NEW',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 288,
                            color: Color(0xffffffff),
                            fontFamily: 'LibreBaskerville-Regular',
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Positioned(
                      left: 96,
                      width: 385.464,
                      top: 56,
                      child: Text(
                        'up to 80% off.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 48,
                            color: Color(0xff000000),
                            fontFamily: 'AvenirNextCyr-Bold',
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 994,
                      width: 140,
                      top: 41,
                      height: 141,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            width: 140,
                            top: 0,
                            height: 141,
                            child: Image.asset(
                              'images/image_472865.png',
                              width: 140,
                              height: 141,
                            ),
                          ),
                          const Positioned(
                            left: 12.869,
                            width: 114.086,
                            top: 48.852,
                            height: 45.46,
                            child: Text(
                              'trusted\nsince 1997',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                  color: Color(0xffffffff),
                                  fontFamily: 'Mulish-ExtraBold',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 290,
              width: 1340,
              top: 1975,
              height: 562,
              child: Stack(
                children: [
                  Positioned(
                    left: 580.5,
                    width: 171,
                    top: 516,
                    height: 46,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 171,
                          top: 0,
                          height: 46,
                          child: Container(
                            width: 171,
                            height: 46,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff898989), width: 2),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Shop more',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontFamily: 'AvenirNextCyr-Bold',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 52,
                    width: 1237,
                    top: 0,
                    height: 488,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190726743.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726562.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Jo Malone Vetiver & Go...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Ipsa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-BlackItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Luminizing Clay',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 314,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190726741.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726590.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Armaf Passion',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Armaf',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-LightItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Eau De Parfum',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 942,
                          width: 295,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 295,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 295,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258.877,
                                width: 19.065,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190726739.png',
                                  width: 19.065,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21.071,
                                width: 252.857,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726664.png',
                                  width: 252.857,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Bvlgari Extreme',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Ipsa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-BlackItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Luminizing Clay',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 628,
                          width: 294,
                          top: 0,
                          height: 488,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 294,
                                top: 0,
                                height: 488,
                                child: Container(
                                  width: 294,
                                  height: 488,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.5,
                                width: 252,
                                top: 421.728,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 252,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 252,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffc4c4c4),
                                              width: 1),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add to bag',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xff000000),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 258,
                                width: 19,
                                top: 16,
                                height: 16,
                                child: Image.asset(
                                  'images/image1_190726737.png',
                                  width: 19,
                                  height: 16,
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 252,
                                top: 41.272,
                                height: 229.455,
                                child: Image.asset(
                                  'images/image2_190726618.png',
                                  width: 252,
                                  height: 229.455,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                width: 252,
                                top: 301,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Jo Malone Vetiver & Go...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                              fontFamily: 'AvenirNextCyr-Bold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'by Bvlgari',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 13,
                                              color: Color(0xff898989),
                                              fontFamily: 'Mulish-LightItalic',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'Eau De Toilette',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontFamily: 'AvenirNextCyr-Light',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      'from \$51.74',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontFamily: 'Mulish-ExtraBold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 21,
                                width: 54,
                                top: 11.727,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 54,
                                      top: 0,
                                      height: 20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Container(
                                              width: 54,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff764b7c),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 0,
                                            width: 54,
                                            top: 0,
                                            height: 20,
                                            child: Text(
                                              'Women',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 10,
                                                  color:
                                                      Color(0xffffffff),
                                                  fontFamily: 'Mulish-Black',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              maxLines: 9999,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1340,
                    top: 194,
                    height: 40,
                    child: Image.asset(
                      'images/image_3049168.png',
                      width: 1340,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 0,
              width: 1920,
              top: 1891,
              child: Text(
                'Recommended for you',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 30,
                    color: Color(0xff000000),
                    fontFamily: 'AvenirNextCyr-Bold',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 343,
              width: 1238,
              top: 3233,
              height: 223,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1238,
                    top: 0,
                    height: 223,
                    child: Container(
                      width: 1238,
                      height: 223,
                      decoration: const BoxDecoration(
                        color: Color(0xfffcf1f5),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 89,
                            width: 234,
                            top: 119,
                            height: 46,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  width: 234,
                                  top: 0,
                                  height: 46,
                                  child: Container(
                                    width: 234,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xff383838),
                                          width: 2),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(45),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'get a gift certificate',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 14,
                                                    color:
                                                        Color(0xff000000),
                                                    fontFamily:
                                                        'AvenirNextCyr-Bold',
                                                    fontWeight:
                                                        FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            left: 89,
                            top: 58,
                            child: Text(
                              'Gift Certificates',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 34,
                                  color: Color(0xff000000),
                                  fontFamily: 'AvenirNextCyr-Bold',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 572,
                            width: 666,
                            top: 0,
                            height: 223,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  width: 666,
                                  top: 0,
                                  height: 223,
                                  child: Image.asset(
                                    'images/image_180434588.png',
                                    width: 666,
                                    height: 223,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 147.129,
                                  top: 5.043,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        'images/image_190729167.png',
                                        width: 39.558,
                                        height: 41.728,
                                      ),
                                      const SizedBox(width: 8.746699333190918),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'PerfumeShop',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 27.989,
                                                    color:
                                                        Color(0xffbe5b75),
                                                    fontFamily:
                                                        'Kodchasan-Regular',
                                                    fontWeight:
                                                        FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                '.com',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 12.245,
                                                    color:
                                                        Color(0xffbe5b75),
                                                    fontFamily: 'K2D-Medium',
                                                    fontWeight:
                                                        FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                              height: 5.248019218444824),
                                          Text(
                                            'TRUSTED ONLINE SINCE 1997',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 9.621,
                                                color: Color(0xff585858),
                                                fontFamily: 'Almarai-Regular',
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 347,
              width: 1234,
              top: 3476.999,
              height: 290.002,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 607,
                    top: 0,
                    height: 290,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 607,
                          top: 0,
                          height: 290,
                          child: Container(
                            width: 607,
                            height: 290,
                            decoration: const BoxDecoration(
                              color: Color(0xfff5f6f6),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 298,
                          width: 415,
                          top: 49.002,
                          height: 253,
                          child: Image.asset(
                            'images/image1_190727061.png',
                            width: 415,
                            height: 253,
                          ),
                        ),
                        Positioned(
                          left: 426,
                          width: 88,
                          top: 74,
                          height: 399,
                          child: Image.asset(
                            'images/image2_2017881.png',
                            width: 88,
                            height: 399,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 51,
                          width: 273,
                          top: 41.002,
                          height: 208,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 183,
                                top: 162,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      width: 183,
                                      top: 0,
                                      height: 46,
                                      child: Container(
                                        width: 183,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffbe5b75),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Learn More',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        color: Color(
                                                            0xffffffff),
                                                        fontFamily:
                                                            'AvenirNextCyr-Bold',
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                left: 3,
                                width: 149.135,
                                top: 119,
                                child: Text(
                                  'as low as \$9.95/month',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      fontFamily: 'Mulish-SemiBold',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Join Our',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                      fontFamily: 'AvenirNextCyr-Regular',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Positioned(
                                left: 0,
                                width: 274,
                                top: 24.998,
                                child: Text(
                                  'Subscription\nClub',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 34,
                                      color: Color(0xff000000),
                                      fontFamily: 'AvenirNextCyr-Bold',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 626,
                    width: 608,
                    top: 0.002,
                    height: 290,
                    child: Container(
                      width: 608,
                      height: 290,
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f6f6),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            width: 608,
                            top: 0,
                            height: 290,
                            child: Image.asset(
                              'images/image_105428065.png',
                              width: 608,
                              height: 290,
                            ),
                          ),
                          const Positioned(
                            left: 53,
                            top: 139,
                            child: Text(
                              'Monthy Giveway',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                  fontFamily: 'AvenirNextCyr-Regular',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 53,
                            width: 183,
                            top: 197,
                            height: 46,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  width: 183,
                                  top: 0,
                                  height: 46,
                                  child: Container(
                                    width: 183,
                                    height: 46,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4d2952),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(45),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Learn more',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 14,
                                                    color:
                                                        Color(0xffffffff),
                                                    fontFamily:
                                                        'AvenirNextCyr-Bold',
                                                    fontWeight:
                                                        FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            left: 53,
                            width: 368,
                            top: 40,
                            child: Text(
                              'Win a \$250\nSpopping spree',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 34,
                                  color: Color(0xff000000),
                                  fontFamily: 'AvenirNextCyr-Bold',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 908,
              width: 104,
              top: 636,
              height: 39,
              child: Image.asset(
                'images/image2_56312543.png',
                width: 104,
                height: 39,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: 187,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 40,
                    height: 147,
                    child: Container(
                      width: 1920,
                      height: 147,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 1920,
                    top: 0,
                    height: 40,
                    child: Container(
                      width: 1920,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xff4d2952),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 556,
                    top: 138,
                    child: Text(
                      'Brands',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 404,
                    top: 138,
                    child: Text(
                      'Perfumes',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 691,
                    top: 138,
                    child: Text(
                      'Skincare',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 839,
                    top: 138,
                    child: Text(
                      'Makeup',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 976,
                    top: 138,
                    child: Text(
                      'Haircare',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 1125,
                    top: 138,
                    child: Text(
                      'Aromatherapy',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 1321,
                    top: 138,
                    child: Text(
                      'Candles',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 1465,
                    top: 138,
                    child: Text(
                      'Gifts',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff383838),
                          fontFamily: 'AvenirNextCyr-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 27,
                    right: 29,
                    top: 59,
                    height: 46,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 803.5,
                          width: 260,
                          top: 3.58,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                'images/image_190726399.png',
                                width: 29,
                                height: 38,
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'PerfumeShop',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 32,
                                            color: Color(0xff4d2952),
                                            fontFamily: 'Kodchasan-Regular',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        '.com',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff4d2952),
                                            fontFamily: 'K2D-Medium',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'TRUSTED ONLINE SINCE 1997',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 11,
                                        color: Color(0xff585858),
                                        fontFamily: 'Almarai-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 1263,
                          top: 0,
                          height: 46,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        color: const Color(0xffe5e5e5),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(29),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 16,
                                width: 25,
                                top: 10,
                                height: 25,
                                child: Image.asset(
                                  'images/image_190730610.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              const Positioned(
                                left: 29,
                                top: 13,
                                child: Text(
                                  'Hey, what are you looking for?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      color: Color(0xff898989),
                                      fontFamily: 'AvenirNextCyr-Regular',
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1513,
                          top: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'images/image_190729129.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        'My Account',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontFamily: 'AvenirNextCyr-Medium',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'images/image_190729133.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        'Wishlist',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontFamily: 'AvenirNextCyr-Medium',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'images/image_190729136.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        '2 items',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontFamily: 'AvenirNextCyr-Medium',
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 807,
                    top: 11,
                    child: Text(
                      '🔥  Only 11 days left until VALENTINE\'S DAY!  🔥',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xffffffff),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 1629,
                    top: 11,
                    child: Text(
                      'Help & Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xffffffff),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 1776,
                    top: 11,
                    child: Text(
                      'Connect with us',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xffffffff),
                          fontFamily: 'AvenirNextCyr-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 27,
                    width: 42,
                    top: 11,
                    height: 17,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'USD',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Color(0xffffffff),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 37,
                          width: 5,
                          top: 8,
                          height: 2,
                          child: Image.asset(
                            'images/image_190726367.png',
                            width: 5,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 94,
                    width: 62,
                    top: 11,
                    height: 17,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'English',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Color(0xffffffff),
                                fontFamily: 'AvenirNextCyr-Regular',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 57,
                          width: 5,
                          top: 8,
                          height: 2,
                          child: Image.asset(
                            'images/image_190726370.png',
                            width: 5,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -3,
                    width: 1923,
                    top: 187,
                    height: 1,
                    child: Container(
                      width: 1923,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffe5e5e5), width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 1714,
              width: 168,
              top: 963,
              height: 53,
              child: Container(
                width: 168,
                height: 53,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x2d000000),
                        offset: Offset(0, 4),
                        blurRadius: 200),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 168,
                      top: 0,
                      height: 53,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            width: 168,
                            top: 0,
                            height: 53,
                            child: Container(
                              width: 168,
                              height: 53,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                border: Border.all(
                                    color: const Color(0xffc4c4c4), width: 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            width: 20.168,
                            top: 17,
                            height: 18.842,
                            child: Image.asset(
                              'images/image_190726408.png',
                              width: 20.168,
                              height: 18.842,
                            ),
                          ),
                          const Positioned(
                            left: 61,
                            width: 75,
                            top: 0,
                            height: 53,
                            child: Text(
                              'Live help',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: Color(0xff4d2952),
                                  fontFamily: 'Mulish-BlackItalic',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 168,
                      top: 0,
                      height: 53,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            width: 168,
                            top: 0,
                            height: 53,
                            child: Container(
                              width: 168,
                              height: 53,
                              decoration: BoxDecoration(
                                color: const Color(0xff4d2952),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            width: 20.168,
                            top: 17,
                            height: 18.842,
                            child: Image.asset(
                              'images/image_190726413.png',
                              width: 20.168,
                              height: 18.842,
                            ),
                          ),
                          const Positioned(
                            left: 61,
                            width: 75,
                            top: 0,
                            height: 53,
                            child: Text(
                              'Live help',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: Color(0xffffffff),
                                  fontFamily: 'AvenirNextCyr-Bold',
                                  fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
