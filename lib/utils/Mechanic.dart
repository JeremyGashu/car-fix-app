class Mechanic {
  final String image;
  final String name;
  final bool isFreelancer;
  final int rating;
  final num distance;
  final String garageName;
  final String email;
  final String phoneNo;
  final String telegramUsername;
  final String address;
  Mechanic(
      {this.name,
      this.image,
      this.isFreelancer,
      this.rating,
      this.distance,
      this.garageName,
      this.email,
      this.phoneNo,
      this.telegramUsername,
      this.address});

  @override
  String toString() {

    return 'Name : ${this.name}';
  }
}

var mechanics = [
  Mechanic(
      name: 'Ermias Gashu',
      image: 'ermiasgashu.jpg',
      distance: 1.5,
      isFreelancer: false,
      rating: 4,
      garageName: 'General Garage',
      email: 'gearmias@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@ermiasgashu',
      address: 'Summit Condominium'),
  Mechanic(
      name: 'Hilina Temesgen',
      image: 'hilina.jpg',
      distance: 3.0,
      isFreelancer: false,
      rating: 5,
      garageName: 'Alamgena Garage',
      email: 'hilinatemesgen@gmail.com',
      phoneNo: '+2510909121212',
      telegramUsername: '@hilinatemesgen',
      address: 'Jommo Condominium'),
  Mechanic(
      name: 'Girma Gemechu',
      image: 'ermiasgashu.jpg',
      distance: 4.5,
      isFreelancer: true,
      rating: 3,
      email: 'girmagemechu@gmail.com',
      phoneNo: '+2510909121212',
      telegramUsername: '@girma',
      address: 'Sengatera Condominum'),
  Mechanic(
      name: 'Nebiyu Aynalem',
      image: 'ermiasgashu.jpg',
      distance: 2,
      isFreelancer: false,
      rating: 5,
      garageName: 'Nebiyu Garage',
      email: 'nebiyuanalem@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@nebiyuaynalem',
      address: 'Piyassa'),
  Mechanic(
      name: 'Kebede Daniel',
      image: 'ermiasgashu.jpg',
      distance: 0.5,
      isFreelancer: true,
      rating: 3,
      email: 'kebededanie@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@kebededaniel',
      address: '4 Kilo'),
  Mechanic(
      name: 'Melkamu Tebeje',
      image: 'ermiasgashu.jpg',
      distance: 4,
      isFreelancer: false,
      rating: 5,
      garageName: 'Melkamu Garage',
      email: 'melkamutebeje@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@melkamu',
      address: '6 Kilo'),
  Mechanic(
      name: 'Mekdes Derib',
      image: 'ermiasgashu.jpg',
      distance: 1,
      isFreelancer: true,
      rating: 3,
      email: 'mekdesderib@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@mekdesderib',
      address: 'Megenagna'),
  Mechanic(
      name: 'Alazar Tesfahun',
      image: 'ermiasgashu.jpg',
      distance: 0.7,
      isFreelancer: true,
      rating: 3,
      email: 'alazar@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@alazertesfahun',
      address: 'Mexico'),
  Mechanic(
      name: 'Hailemichael Asfaw',
      image: 'ermiasgashu.jpg',
      distance: 3,
      isFreelancer: true,
      rating: 4,
      email: 'haile@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@hailemichael',
      address: 'Tor Hailoch'),
  Mechanic(
      name: 'Alemu Aga',
      image: 'ermiasgashu.jpg',
      distance: 4,
      isFreelancer: true,
      rating: 3,
      email: 'alemu@gmail.com',
      phoneNo: '+251936951272',
      telegramUsername: '@alemuaga',
      address: 'Kolfe 18'),
];
