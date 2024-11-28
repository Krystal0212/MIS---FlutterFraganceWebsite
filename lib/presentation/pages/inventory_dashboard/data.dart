import 'package:eaudelux/presentation/widgets/import_packages.dart';

class DataSample {
  static const String urlDiorSauvage =
      'https://www.dior.com/dw/image/v2/BGXS_PRD/on/demandware.static/-/Library-Sites-DiorSharedLibrary/default/dw7a190948/images/beauty/01-FRAGRANCES/2024/RENO_SAUVAGE/SVG_EF_Mood_Hero-Solo_3000x3000-1.jpg?sw=640';
  static const String urlDiorHomme =
      "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2024/05/nuoc-hoa-nam-dior-homme-ban-2020-edp-intense-100ml-664c122bb34e9-21052024101659.jpg";
  static const String urlGucciBloom =
      "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1545327905/488830_99999_0099_001_100_0000_Light-Gucci-Bloom-100ml-eau-de-parfum.jpg";
  static const String urlGucciGuilty =
      "https://product.hstatic.net/1000340570/product/gucci-guilty-pour-homme-eau-de-parfum-50ml_2079ce53f39f4878bc02340e93e457be_master.jpg";
  static const String urlTomFordBlackOrchid =
      "https://theperfume.vn/wp-content/uploads/2017/07/Tom-Ford-Black-Orchid-4-1-e1667273535459-340x340.jpg";
  static const String urlTomFordOudWood =
      "https://theperfume.vn/wp-content/uploads/2021/01/Nuoc-hoa-Tom-Ford-Oud-Wood-100ml-340x340.jpg";
  static const String urlArmaniCode =
      "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2024/05/nuoc-hoa-nam-giorgio-armani-code-parfum-125ml-663c33cf75b57-09052024092415.jpg";
  static const String urlArmaniSi =
      "https://product.hstatic.net/1000340570/product/si-eau-de-parfum_2e2e9b13f4af443d9e91ed05c9f0aaa7_master.jpg";
  static const String urlYvesSaintLaurentBlackOpium =
      "https://theperfume.vn/wp-content/uploads/2022/02/Black-Opium-Extreme-EDP-1-340x340.jpg";
  static const String urlYvesSaintLaurentBlackLibre =
      "https://theperfume.vn/wp-content/uploads/2021/11/Nuoc-hoa-YSL-Libre-90ml-e1670840224326-300x300.png";
  static const String urlHermesTerreHermes =
      "https://theperfume.vn/wp-content/uploads/2017/04/Terre-dHermes-Parfum-1-340x340.jpg";
  static const String urlHermesVoyageHermes =
      "https://product.hstatic.net/200000201387/product/033cc2fb-3bbf-44df-89d7-ff78fde63cc4_dcf1e399a3cb41cd89df126ac91826f5_master.jpg";
  static const String urlVersaceEros =
      "https://theperfume.vn/wp-content/uploads/2018/10/Nuoc-hoa-Versace-Eros-EDT-200ml-e1672732873530.png";
  static const String urlVersaceBrightCrystal =
      "https://theperfume.vn/wp-content/uploads/2018/10/Nuoc-hoa-Versace-Bright-Crystal-EDT-200ml-e1672732873530.png";
  static const String urlPradaCandy =
      "https://product.hstatic.net/200000201387/product/prada_candy_b9ed819ae4fc42f987735459a9a9509d_master.jpg";
  static const String urlPradaLHomme =
      "https://product.hstatic.net/1000340570/product/prada_l_homme_bed9353469f54252bf93a2c3074f5824_master.jpg";
  static const String urlBurberryHer =
      "https://theperfume.vn/wp-content/uploads/2018/11/nuoc-hoa-burberry-her-eau-de-parfum-e1669705415981-340x340.png";
  static const String urlBurberryBrit =
      "https://theperfume.vn/wp-content/uploads/2017/11/Burberry-Brit-For-Her-5-e1673017491973-340x340.jpg";

  static List<Perfume> perfumes = [
    Perfume(
      name: 'Dior Sauvage',
      sold: [12, 20, 12],
      stock: [10, 5, 5],
      receive: [10, 10, 8],
      price: [95.0, 100.0, 110.0],
      unitCost: [40.0, 45.0, 50.0],
      sizes: [3, 5, 6.4],
      brand: Brand(name: 'Dior'),
      sizeType: SizeType.oz,
      description: 'A bold, fresh, and earthy fragrance that combines the ruggedness of the wild with refined elegance. With notes of bergamot, pepper, and ambroxan, Dior Sauvage offers a timeless scent for confident men.',
      imageUrl: urlDiorSauvage,
    ),
    Perfume(
      name: 'Dior Homme',
      sold: [15, 18, 8],
      stock: [20, 15, 20],
      receive: [12, 10, 7],
      price: [105.0, 110.0, 115.0],
      unitCost: [50.0, 52.0, 55.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Dior'),
      sizeType: SizeType.ml,
      description: 'An intense, masculine scent that combines the ruggedness of the wild with refined elegance. With notes of bergamot, pepper, and ambroxan, Dior Homme offers a timeless scent for confident men.',
      imageUrl: urlDiorHomme,
    ),
    Perfume(
      name: 'Gucci Bloom',
      sold: [10, 12, 8],
      stock: [20, 15, 15],
      receive: [10, 10, 8],
      price: [80.0, 85.0, 90.0],
      unitCost: [40.0, 42.0, 45.0],
      sizes: [30.0, 50.0, 75.0],
      brand: Brand(name: 'Gucci'),
      sizeType: SizeType.ml,
      description: 'A fresh, floral fragrance that captures the essence of nature and femininity. With notes of lavender, rose, and orchid, Gucci Bloom offers a feminine and floral scent for women.',
      imageUrl: urlGucciBloom,
    ),
    Perfume(
      name: 'Gucci Guilty',
      sold: [18, 15, 17],
      stock: [25, 20, 10],
      receive: [10, 12, 15],
      price: [90.0, 95.0, 100.0],
      unitCost: [50.0, 52.0, 55.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Gucci'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlGucciGuilty,
    ),
    Perfume(
      name: 'Tom Ford Black Orchid',
      sold: [5, 8, 7],
      stock: [10, 8, 8],
      receive: [6, 5, 5],
      price: [145.0, 150.0, 155.0],
      unitCost: [75.0, 78.0, 80.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Tom Ford'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlTomFordBlackOrchid,
    ),
    Perfume(
      name: 'Tom Ford Oud Wood',
      sold: [2, 3, 5],
      stock: [5, 3, 2],
      receive: [5, 5, 5],
      price: [120.0, 125.0, 130.0],
      unitCost: [80.0, 85.0, 90.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Tom Ford'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlTomFordOudWood,
    ),
    Perfume(
      name: 'Armani Code',
      sold: [3, 5, 2],
      stock: [5, 4, 5],
      receive: [2, 2, 3],
      price: [95.0, 100.0, 105.0],
      unitCost: [60.0, 62.0, 65.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Armani'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlArmaniCode,
    ),
    Perfume(
      name: 'Armani Si',
      sold: [1, 2, 3],
      stock: [3, 5, 4],
      receive: [2, 3, 2],
      price: [110.0, 115.0, 120.0],
      unitCost: [65.0, 68.0, 70.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Armani'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlArmaniSi,
    ),
    Perfume(
      name: 'Yves Saint Laurent Black Opium',
      sold: [0, 0, 0],
      stock: [10, 5, 5],
      receive: [5, 5, 5],
      price: [110.0, 115.0, 120.0],
      unitCost: [70.0, 72.0, 75.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Yves Saint Laurent'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlYvesSaintLaurentBlackOpium,
    ),
    Perfume(
      name: 'Yves Saint Laurent Libre',
      sold: [0, 0, 0],
      stock: [5, 5, 5],
      receive: [1, 2, 2],
      price: [130.0, 135.0, 140.0],
      unitCost: [80.0, 82.0, 85.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Yves Saint Laurent'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlYvesSaintLaurentBlackLibre,
    ),
    Perfume(
      name: 'Hermès Terre d’Hermès',
      sold: [0, 0, 0],
      stock: [3, 2, 2],
      receive: [1, 1, 1],
      price: [135.0, 140.0, 145.0],
      unitCost: [90.0, 92.0, 95.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Hermès'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlHermesTerreHermes,
    ),
    Perfume(
      name: 'Hermès Voyage d’Hermès',
      sold: [0, 0, 0],
      stock: [2, 2, 5],
      receive: [1, 1, 1],
      price: [125.0, 130.0, 135.0],
      unitCost: [35.0, 37.0, 40.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Hermès'),
      sizeType: SizeType.ml,
      description: 'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      imageUrl: urlHermesVoyageHermes,
    ),
    Perfume(
      name: 'Versace Eros',
      sold: [0, 0, 0],
      stock: [5, 5, 6],
      receive: [2, 1, 1],
      price: [100.0, 105.0, 110.0],
      unitCost: [50.0, 52.0, 55.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Versace'),
      sizeType: SizeType.ml,
      description: 'A woody and mineral fragrance with notes of grapefruit, flint, and oak moss. Terre d’Hermès represents the connection between earth and sky, making it ideal for adventurous spirits.',
      imageUrl: urlVersaceEros,
    ),
    Perfume(
      name: 'Versace Bright Crystal',
      sold: [0, 0, 0],
      stock: [3, 5, 5],
      receive: [0, 0, 0],
      price: [85.0, 90.0, 95.0],
      unitCost: [45.0, 47.0, 50.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Versace'),
      sizeType: SizeType.ml,
      description: 'A sensual and woody fragrance with notes of black pepper, musk, and cedar. Versace Bright Crystal is a timeless classic that captures the essence of femininity and mystery.',
      imageUrl: urlVersaceBrightCrystal,
    ),
    Perfume(
      name: 'Prada Candy',
      sold: [0, 0, 0],
      stock: [3, 3, 4],
      receive: [0, 0, 0],
      price: [80.0, 85.0, 90.0],
      unitCost: [40.0, 42.0, 45.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Prada'),
      sizeType: SizeType.ml,
      description: 'A sensual and woody fragrance with notes of black pepper, musk, and cedar. Versace Bright Crystal is a timeless classic that captures the essence of femininity and mystery.',
      imageUrl: urlPradaCandy,
    ),
    Perfume(
      name: 'Prada L’Homme',
      sold: [0, 0, 0],
      stock: [4, 4, 4],
      receive: [0, 0, 0],
      price: [105.0, 110.0, 115.0],
      unitCost: [50.0, 52.0, 55.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Prada'),
      sizeType: SizeType.ml,
      description: 'A sensual and woody fragrance with notes of black pepper, musk, and cedar. Versace Bright Crystal is a timeless classic that captures the essence of femininity and mystery.',
      imageUrl: urlPradaLHomme,
    ),
    Perfume(
      name: 'Burberry Her',
      sold: [0, 0, 0],
      stock: [3, 3, 3],
      receive: [0, 0, 0],
      price: [95.0, 100.0, 105.0],
      unitCost: [45.0, 47.0, 50.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Burberry'),
      sizeType: SizeType.ml,
      description: 'A sensual and woody fragrance with notes of black pepper, musk, and cedar. Versace Bright Crystal is a timeless classic that captures the essence of femininity and mystery.',
      imageUrl: urlBurberryHer,
    ),
    Perfume(
      name: 'Burberry Brit',
      sold: [0, 0, 0],
      stock: [2, 3, 2],
      receive: [0, 0, 0],
      price: [90.0, 95.0, 100.0],
      unitCost: [40.0, 42.0, 45.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Burberry'),
      sizeType: SizeType.ml,
      description: 'A sensual and woody fragrance with notes of black pepper, musk, and cedar. Versace Bright Crystal is a timeless classic that captures the essence of femininity and mystery.',
      imageUrl: urlBurberryBrit,
    ),
  ];

  static List<Perfume> getPerfumes() {
    return perfumes;
  }
}
