import 'package:design/models/category.dart';
import 'package:design/models/places.dart';

const CATEGORY_DUMMY_DATA = const [
  Category(
      id: 'P1',
      title: 'Pantai',
      des: "",
      image:
          'http://pluspng.com/img-png/the-beach-png-black-and-white--952.png'),
  Category(
      id: 'P2',
      title: 'Gunung',
      des: "",
      image:
          'https://images.vexels.com/media/users/3/137476/isolated/preview/d89adf16dc6fce8b9abe54aec3af2546-four-peak-mountain-icon-by-vexels.png'),
  Category(
      id: 'P3',
      title: 'Budaya',
      des: "",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/f/f8/Drama-icon.png'),
  Category(
      id: 'P4',
      title: 'Kuliner',
      des: "",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/f/f8/Drama-icon.png'),
  Category(
      id: 'P5',
      title: 'Religi',
      des: "",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Religion_icon.svg/1138px-Religion_icon.svg.png'),
  Category(
      id: 'P6',
      title: 'Edukasi',
      des: "",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/e/e8/Education%2C_Studying%2C_University%2C_Alumni_-_icon.png'),
];

const PLACES_DUMMY_DATA = const [
  Places(
      id: 'A1',
      name: "Pantai Kerasak",
      category: 'P1',
      des:
          "Cillum ullamco quis laborum veniam enim laborum proident in sunt sint sunt exercitation quis.",
      image: 'https://ammatoa.com/wp-content/uploads/2016/09/kajang.jpg',
      author: "Nuge",
      price: 50000),
  Places(
      id: 'A2',
      name: "Pantai Kerasak",
      category: 'P1',
      des:
          "Cillum ullamco quis laborum veniam enim laborum proident in sunt sint sunt exercitation quis.",
      image:
          'https://media.travelingyuk.com/wp-content/uploads/2019/05/Pantai-Bara-di-Bulukumba.jpg',
      author: "Noval",
      price: 33000),
  Places(
      id: 'A3',
      name: "Pantai Wedi Ombo",
      category: 'P2',
      des:
          "Cillum ullamco quis laborum veniam enim laborum proident in sunt sint sunt exercitation quis.",
      image:
          'https://www.panentour.com/wp-content/uploads/2019/03/3D-TORAJA-MAKASSAR-PARE-PARE-2-1024x578.jpg',
      author: "Nuge",
      price: 50000),
  Places(
      id: 'A4',
      name: "Pantai Parangteritis",
      category: 'P3',
      des:
          "Cillum ullamco quis laborum veniam enim laborum proident in sunt sint sunt exercitation quis.",
      image:
          'https://www.panentour.com/wp-content/uploads/2019/03/3D-TORAJA-MAKASSAR-PARE-PARE-2-1024x578.jpg',
      author: "Nuge",
      price: 24000),
];
