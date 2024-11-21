class CarModel {
  final String? image;
  final String? name;
  final double? price;
  final String? currency;
  final String? details;
  final int? warrantyKm;
  final String? engine;
  final int? yearOfManufacture;
  final double? mileage;
  final String? interiorColor;
  final String? exteriorColor;
  final String? seatType;
  final bool? hasSunroof;
  final bool? hasRearCamera;
  final String? sensor;
  final int? cylinders;
  final String? transmission;

  CarModel({
    this.image,
    this.name,
    this.price,
    this.currency,
    this.details,
    this.warrantyKm,
    this.engine,
    this.yearOfManufacture,
    this.mileage,
    this.interiorColor,
    this.exteriorColor,
    this.seatType,
    this.hasSunroof,
    this.hasRearCamera,
    this.sensor,
    this.cylinders,
    this.transmission,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      image: json['image'],
      name: json['name'],
      price: json['price'],
      currency: json['currency'],
      details: json['details'],
      warrantyKm: json['warrantyKm'],
      engine: json['engine'],
      yearOfManufacture: json['yearOfManufacture'],
      mileage: json['mileage'],
      interiorColor: json['interiorColor'],
      exteriorColor: json['exteriorColor'],
      seatType: json['seatType'],
      hasSunroof: json['hasSunroof'],
      hasRearCamera: json['hasRearCamera'],
      sensor: json['sensor'],
      cylinders: json['cylinders'],
      transmission: json['transmission'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'price': price,
      'currency': currency,
      'details': details,
      'warrantyKm': warrantyKm,
      'engine': engine,
      'yearOfManufacture': yearOfManufacture,
      'mileage': mileage,
      'interiorColor': interiorColor,
      'exteriorColor': exteriorColor,
      'seatType': seatType,
      'hasSunroof': hasSunroof,
      'hasRearCamera': hasRearCamera,
      'sensor': sensor,
      'cylinders': cylinders,
      'transmission': transmission,
    };
  }
}

final List<CarModel> carList = [
  CarModel(
    image: "assets/Image 1.png",
    name: "تويوتا كامري",
    price: 24000,
    currency: "دولار",
    details:
        """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة""",
    warrantyKm: 60000,
    engine: "2.5L 4 سلندر",
    yearOfManufacture: 2021,
    mileage: 15000,
    interiorColor: "أسود",
    exteriorColor: "أبيض",
    seatType: "جلد",
    hasSunroof: true,
    hasRearCamera: true,
    sensor: "حساسات الركن",
    cylinders: 4,
    transmission: "أوتوماتيك",
  ),
  CarModel(
    image: "assets/car2.jpg",
    name: "بي إم دبليو X5",
    price: 58000,
    currency: "دولار",
    details:
        """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة""",
    warrantyKm: 80000,
    engine: "3.0L توربو",
    yearOfManufacture: 2022,
    mileage: 5000,
    interiorColor: "بيج",
    exteriorColor: "أسود",
    seatType: "جلد فاخر",
    hasSunroof: true,
    hasRearCamera: true,
    sensor: "حساسات 360°",
    cylinders: 6,
    transmission: "أوتوماتيك",
  ),
  CarModel(
    image: "assets/car3.jpg",
    name: "هوندا سيفيك",
    price: 21000,
    currency: "دولار",
    details:
        """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة""",
    warrantyKm: 50000,
    engine: "1.8L 4 سلندر",
    yearOfManufacture: 2020,
    mileage: 20000,
    interiorColor: "رمادي",
    exteriorColor: "أحمر",
    seatType: "قماش",
    hasSunroof: false,
    hasRearCamera: true,
    sensor: "حساسات خلفية",
    cylinders: 4,
    transmission: "CVT",
  ),
  CarModel(
    image: "assets/car4.jpg",
    name: "مرسيدس-بنز الفئة E",
    price: 75000,
    currency: "دولار",
    details:
        """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة""",
    warrantyKm: 100000,
    engine: "2.0L توربو",
    yearOfManufacture: 2023,
    mileage: 1000,
    interiorColor: "بني",
    exteriorColor: "فضي",
    seatType: "جلد نابا",
    hasSunroof: true,
    hasRearCamera: true,
    sensor: "حساس النقاط العمياء",
    cylinders: 4,
    transmission: "أوتوماتيك",
  ),
  CarModel(
    image: "assets/Image 11.png",
    name: "فورد موستانج",
    price: 55000,
    currency: "دولار",
    details:
        """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة""",
    warrantyKm: 70000,
    engine: "5.0L V8",
    yearOfManufacture: 2021,
    mileage: 12000,
    interiorColor: "أسود",
    exteriorColor: "أزرق",
    seatType: "رياضي",
    hasSunroof: false,
    hasRearCamera: true,
    sensor: "حساسات خلفية",
    cylinders: 8,
    transmission: "يدوي",
  ),
  CarModel(
    image: "assets/Image 11.png",
    name: "فورد موستانج",
    price: 55000,
    currency: "دولار",
    details:
        """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة""",
    warrantyKm: 70000,
    engine: "5.0L V8",
    yearOfManufacture: 2021,
    mileage: 12000,
    interiorColor: "أسود",
    exteriorColor: "أزرق",
    seatType: "رياضي",
    hasSunroof: false,
    hasRearCamera: true,
    sensor: "حساسات خلفية",
    cylinders: 8,
    transmission: "يدوي",
  ),
];
