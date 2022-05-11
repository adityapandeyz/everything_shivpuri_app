import 'package:everything_shivpuri_app/models/weather_card.dart';
import 'package:everything_shivpuri_app/screen/about_us.dart';
import 'package:everything_shivpuri_app/screen/category_route.dart';
import 'package:everything_shivpuri_app/screen/chhatri_details.dart';
import 'package:everything_shivpuri_app/screen/contact_us.dart';
import 'package:everything_shivpuri_app/screen/helpline_route.dart';
import 'package:everything_shivpuri_app/screen/uit_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => RouteOne(),
        '/detail': (context) => const Category(
              title: '',
              cardImage: '',
              name1: '',
              image1: '',
              address1: '',
              url1: '',
              name2: '',
              image2: '',
              address2: '',
              url2: '',
              name3: '',
              image3: '',
              address3: '',
              url3: '',
              name4: '',
              image4: '',
              address4: '',
              url4: '',
              name5: '',
              image5: '',
              address5: '',
              url5: '',
              name6: '',
              image6: '',
              address6: '',
              url6: '',
            ),
      },
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromARGB(255, 0, 0, 0),
    ),
  );
}

class PhotoItem {
  final String title;
  final String cardImage;
  final String name1;
  final String image1;
  final String address1;
  final String url1;

  final String name2;
  final String image2;
  final String address2;
  final String url2;

  final String name3;
  final String image3;
  final String address3;
  final String url3;

  final String name4;
  final String image4;
  final String address4;
  final String url4;

  final String name5;
  final String image5;
  final String address5;
  final String url5;

  final String name6;
  final String image6;
  final String address6;
  final String url6;

  PhotoItem(
    this.title,
    this.cardImage,
    this.name1,
    this.image1,
    this.address1,
    this.url1,
    this.name2,
    this.image2,
    this.address2,
    this.url2,
    this.name3,
    this.image3,
    this.address3,
    this.url3,
    this.name4,
    this.image4,
    this.address4,
    this.url4,
    this.name5,
    this.image5,
    this.address5,
    this.url5,
    this.name6,
    this.image6,
    this.address6,
    this.url6,
  );
}

class RouteOne extends StatelessWidget {
  final List<PhotoItem> _items = [
    PhotoItem(
      "Food/Cafe",
      "assets/cards/1.png",
      "Food n Rolls",
      "https://lh5.googleusercontent.com/p/AF1QipMuUTkq3jvYvr2j7An2UXcTB3BMMDz6AftFy3s=w408-h306-k-no",
      "Madhav Chowk, Indira Colorn,\nShivpuri",
      "https://goo.gl/maps/W8DZpyYrWEUHMg3G7",
      "Food Costa",
      "https://lh5.googleusercontent.com/p/AF1QipM9S8ZUaVhHaK8Ry8mBegt8jX_6DQXRe_D5FQpj=w533-h240-k-no",
      "A303/2, Krishnapuram Colony,\nShivpuri",
      "https://goo.gl/maps/o5YgKtNzG18VjRvM6",
      "Burgerland",
      "https://lh5.googleusercontent.com/p/AF1QipNgN3MR9OEwRIoMLI2lSeagM4psal9fn8on9KfW=w427-h240-k-no",
      "Raj Palace, Near Madhav Chowk,\nChhatri Rd, Shivpuri",
      "https://www.google.com/maps/place/Burgerland+Shivpuri/@25.4232893,77.6576272,17z/data=!3m1!4b1!4m5!3m4!1s0x3970bbb483b008cf:0x3e4bccef0d8ddca6!8m2!3d25.4232845!4d77.6598159",
      "Chai Sutta Bar",
      "https://lh5.googleusercontent.com/p/AF1QipMIe3Ra2wmi0VJOakdoHmTqT_ffgJN7fD_0Mzjt=w408-h306-k-no",
      "216, 58, Bank Colony,\nShivpuri",
      "https://goo.gl/maps/xRhRLbGh5zXpyY2s8",
      "Prem Sweets",
      "https://lh5.googleusercontent.com/p/AF1QipPAlckvZfzw_L5uoEuBO-GQ1I7rIno2BhNr37ds=w480-h240-k-no",
      "CMF5+M46, Madhav Chowk, chouraha,\nShivpuri",
      "https://goo.gl/maps/vxWLhX7J62PuiBEH7",
      "Picnic Bakery",
      "https://indiasthan.cdnpro.in/states/mp/shivpuri/convenience_store/suman-bakery-41409.jpg",
      "Benath Shivpuri Hotel Madhav Chowk,\nShivpuri",
      "https://goo.gl/maps/q1hwdPoDq4U8n8bU9",
    ),
    PhotoItem(
      "Hotel",
      "assets/cards/2.png",
      "Hotel Raj Palace",
      "https://lh5.googleusercontent.com/p/AF1QipNT6_8K7Wz3IamemIBvgMzvbiVZRj47V6cTq9KD=w426-h240-k-no",
      "Near Madhav Chawk, Chhatri Rd,\nShivpuri",
      "https://www.google.com/maps/place/Hotel+Raj+Palace/@25.423359,77.6575979,17z/data=!3m1!4b1!4m8!3m7!1s0x3970b955ff69c9a9:0x71c91ef402bdc9f3!5m2!4m1!1i2!8m2!3d25.4233542!4d77.6597866",
      "MPT Tourist Village",
      "https://lh5.googleusercontent.com/p/AF1QipPmYLoyzIf1RpKI7QvyXJXUQjwuBQDTwoB2peSv=w426-h240-k-no",
      "Chhatri Rd, near Bhadaiya Kund,\nShivpuri",
      "https://goo.gl/maps/kKTPVL76q5dMpcqt6",
      "Hotel Uday Vilas",
      "https://lh5.googleusercontent.com/p/AF1QipN_ps7zb7Cls3nv9xJ_iLEj1VOM1iD9oPnkwmpu=w523-h240-k-no",
      "AB Rd, Fatehpur, Barodi,\nShivpuri",
      "https://goo.gl/maps/n5E6wmgbUmNLr4bRA",
      "Hotel Star Gold Palace",
      "https://lh5.googleusercontent.com/p/AF1QipNYMJHFe3ty1FWEs1fBxUOYv-p4c7q2HSh2qvN8=w450-h240-k-no",
      "Mumbai - Agra National Hwy,\nShivpuri",
      "https://goo.gl/maps/Txxsvt4v2WCo3YWM6",
      "Hotel Sonchiraiya",
      "https://lh5.googleusercontent.com/p/AF1QipMG78NBLQhpcxBeFcUwM7puPD_ZbRLE-1eLwVu1=w427-h240-k-no",
      "Circular Road,\nShivpuri",
      "https://goo.gl/maps/7NmJWcXMoDkYtShB7",
      "P S Residency Hotel",
      "https://lh5.googleusercontent.com/p/AF1QipOkQZAR_ehowg6wLykUsWveVNrb22zif1JZN-0U=w507-h240-k-no",
      "circular road, Gwalior Guna by Pass Road\nShivpuri",
      "https://goo.gl/maps/uC1j7e5goeoZL8ft9",
    ),
    PhotoItem(
      "Super Markets",
      "assets/cards/3.png",
      "Apoorti Family Store",
      "https://lh5.googleusercontent.com/p/AF1QipPFCG69x7QlEbeN6q7fP4y-MV6-rwQfwsU4r7_v=w408-h306-k-no",
      "AB Rd, Bank Colony,\nShivpuri",
      "https://goo.gl/maps/HX3Z3tC9ozbzdvNj7",
      "Goyal The Family Store",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Kamla Ganj,\nShivpuri",
      "https://goo.gl/maps/pjG43QB13qZamTdSA",
      "V-Mart",
      "https://lh5.googleusercontent.com/p/AF1QipPa7EGP6gpmLPfIXKjuXH3A9vYVwhVKZvTFiaRS=w515-h240-k-no",
      "BR Tower, AB Rd,\nShivpuri",
      "https://goo.gl/maps/UXPmXBELk2oWQtk57",
      "Sampoorna Family Store",
      "https://lh5.googleusercontent.com/p/AF1QipPxNcOSSKAtFWl4wS9PHK4PxdiGx5W5XVcVV1dc=w408-h615-k-no",
      "Purani,\nShivpuri",
      "https://goo.gl/maps/AL3EDC17mDWaRxD1A",
      "Reliance Smart Point",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Chhatri Rd, Indira Colony,\nShivpuri",
      "https://goo.gl/maps/3LDzrEF4VffecbLq8",
      "Kotiya Departmental Store",
      "https://lh5.googleusercontent.com/p/AF1QipO9RuTDcMAKbX3IPxc18dgI0mY0IZGExivNJTw3=w408-h306-k-no",
      "Nawab Sahab Rd, Krishnapuram Colony,\nShivpuri",
      "https://goo.gl/maps/uQ4yFi1x5yCZxpXeA",
    ),
    PhotoItem(
      "Garments",
      "assets/cards/4.png",
      "TRENDS",
      "https://lh5.googleusercontent.com/p/AF1QipOmvFFMZB7zob0ilnG9unsc4Yy-ob1ZyACGq_RA=w408-h409-k-no",
      "Mahal Colony,\nShivpur",
      "https://goo.gl/maps/APsGzWLatZcFFA4K7",
      "Peter England",
      "https://lh5.googleusercontent.com/p/AF1QipM2_3YO8M6bu8R-aGYbDB3emLhmguAHXYqLDajV=w408-h256-k-no",
      "AB Rd, Fatehpur,\nShivpuri",
      "https://goo.gl/maps/GnnRuNjwTTcUkA788",
      "Paridhan Readymade",
      "https://lh5.googleusercontent.com/p/AF1QipN9C8I32GMVjnUXV9n9Pi2i7aC7-d0Njyu-Wqud=w408-h905-k-no",
      "Mahal Colony,\nShivpuri",
      "https://goo.gl/maps/kqtyPrU2Vum7pjc86",
      "V-Mart",
      "https://lh5.googleusercontent.com/p/AF1QipPa7EGP6gpmLPfIXKjuXH3A9vYVwhVKZvTFiaRS=w515-h240-k-no",
      "BR Tower, AB Rd,\nShivpuri",
      "https://goo.gl/maps/UXPmXBELk2oWQtk57",
      "Pick and pack megamart",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Arya Samaj Rd, Bank Colony,\nShivpuri",
      "https://goo.gl/maps/wiNoxDbWWe9XZszJ6",
      "NewLook",
      "https://lh5.googleusercontent.com/p/AF1QipMUgMEGSNsX6jLI_4s25UtyP-gwJQZM2k3VjU2-=w408-h306-k-no",
      "Rajeshwari Rd, nai ki bagiya,\nShivpuri",
      "https://www.google.com/maps/place/NewLook/@25.4245692,77.6507571,17z/data=!4m16!1m9!3m8!1s0x3970beaac7fa1897:0xe2eb531511815d80!2sNewLook!8m2!3d25.4245689!4d77.6529465!14m1!1BCgIgAQ!16s%2Fg%2F11dzmh78jh!3m5!1s0x3970beaac7fa1897:0xe2eb531511815d80!8m2!3d25.4245689!4d77.6529465!16s%2Fg%2F11dzmh78jh?authuser=0&hl=en",
    ),
    PhotoItem(
      "Tourism",
      "assets/cards/5.png",
      "Chhatri",
      "https://lh5.googleusercontent.com/p/AF1QipOG4iaBr5Wb6O0iqxviqOe-yZ8nnggeh8fC8GRg=w408-h306-k-no",
      "Shivpuri, Madhya Pradesh",
      "https://www.google.co.in/maps/place/Chatri/@25.4243889,77.6721272,15z/data=!4m9!1m2!2m1!1schhatri+temple!3m5!1s0x3970bbdf421e7a5f:0x66ae32c9249d7a70!8m2!3d25.4243889!4d77.6808819!15sCg5jaGhhdHJpIHRlbXBsZVoQIg5jaGhhdHJpIHRlbXBsZZIBDGhpbmR1X3RlbXBsZZoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VOVk5qUmZZbFJSRUFF",
      "Pawa Waterfalls",
      "https://lh5.googleusercontent.com/p/AF1QipO9DToM_C7nj-MY2nxwlSjAme51eMNTFQMR5uSb=w408-h306-k-no",
      "Basai, Shivpuri, Madhya Pradesh",
      "https://www.google.co.in/maps/place/Pawa+Waterfall+Shivpuri/@25.4303044,77.4035824,17z/data=!3m1!4b1!4m5!3m4!1s0x3970924142cd2d5d:0x6b5d9f72838b205!8m2!3d25.430391!4d77.4057761",
      "Madikheda Dam",
      "https://lh5.googleusercontent.com/p/AF1QipMpnk-SXNIKjpVpIjzUxf0_qPAk4BFrCLwAFd6o=w408-h306-k-no",
      "Shivpuri, Madhya Pradesh",
      "https://www.google.co.in/maps/place/Madikheda+Dam,+Madhya+Pradesh+473880/@25.555556,77.8505893,17z/data=!3m1!4b1!4m5!3m4!1s0x3970ca1616d1a4d5:0xa1c802dd9c6f5164!8m2!3d25.555556!4d77.852778",
      "Shivpuri District Museum",
      "https://lh5.googleusercontent.com/p/AF1QipMwom1vYIR38om6nDqqDSeqU5qY3slyCFdsZJ97=w408-h544-k-no",
      "Do batti, Chhatri Rd, Shivpuri,\nMadhya Pradesh",
      "https://www.google.co.in/maps/place/Shivpuri+Museum/@25.421877,77.6652636,16z/data=!4m9!1m2!2m1!1sshivpuri+district+museum!3m5!1s0x3970bbf572cab8db:0xcca9df23c55e1ba3!8m2!3d25.4217971!4d77.6696606!15sChhzaGl2cHVyaSBkaXN0cmljdCBtdXNldW2SAQZtdXNldW0",
      "Tatya Tope Memorial",
      "https://lh5.googleusercontent.com/p/AF1QipNOftbg68ab3LPCgQG0VdVuJ1DsRIPMAQ-g00EE=w408-h306-k-no",
      "Madhav Vilas Palace, Shivpuri,\nMadhya Pradesh",
      "https://www.google.co.in/maps/place/Tatya+Tope+Memorial+Park/@25.4233969,77.6495795,17z/data=!3m1!4b1!4m5!3m4!1s0x3970beaaa29ed0cf:0x72230fbdf4a38b3c!8m2!3d25.4233969!4d77.6517682",
      "Bhoora Khon Waterfall",
      "https://lh5.googleusercontent.com/p/AF1QipMGfvQw0zOdMVo5-6HNj0F4JSABt28lohAvyDIn=w408-h306-k-no",
      "bhoora khon waterfall, Shivpuri,\nMadhya Pradesh",
      "https://www.google.co.in/maps/place/Bhoora+khon+waterfall/@25.494924,77.691268,17z/data=!3m1!4b1!4m5!3m4!1s0x3970b8f3609308c3:0x9909b9f07327ac06!8m2!3d25.494924!4d77.6934567",
    ),
    PhotoItem(
      "Salons/parlour",
      "assets/cards/6.png",
      "The Razer street",
      "https://lh5.googleusercontent.com/p/AF1QipN2b-VQNPLiJqZN4r1iFfuXqwlDXQrG480fe_-K=w408-h272-k-no",
      "theme road, Kamla Ganj,\nShivpuri",
      "https://goo.gl/maps/oy4WpJY6Rg73jim19",
      "Charlie's Zone",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Vivekanand Colony,\nShivpuri",
      "https://goo.gl/maps/Wm5BT5cFBjgrBcfx5",
      "Charizma Beauty Parlour",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Shiva nagar colony, Chhatri Rd,\nShivpuri",
      "https://goo.gl/maps/vCwgLMiTN3ahETw99",
      "Miracle beauty parlour",
      "https://lh5.googleusercontent.com/p/AF1QipOfeFYtH1NRkGoMYNrex3FWBIngz1Kn9-KaEXoA=w64-h64-p-k-no-pi-20-ya263.84-ro0-fo100",
      "Kamlaganj theme road,\nShivpuri",
      "https://goo.gl/maps/NiMy2tzWVdYyLr9w7",
      "Arzoo Makeover",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Jawahar Colony,\nShivpuri",
      "https://goo.gl/maps/2vF2sAiq6xokks3t6",
      "She's Beauty Parlour",
      "https://lh5.googleusercontent.com/p/AF1QipNiqJYNC1q5Ikb2IblIZGuAKEckP9Qorv5aRzFo=w64-h64-p-k-no-pi0-ya154.2-ro0-fo100",
      "Indira Colony,\nShivpuri",
      "https://goo.gl/maps/Aa7Ww83uk5eKXTiMA",
    ),
    PhotoItem(
      "Health",
      "assets/cards/7.png",
      "Government Medical\nCollege",
      "https://lh5.googleusercontent.com/p/AF1QipMmzurXgvQJG73ZK3TvNN9o58Fb6ZPCJMYFqhIF=w408-h306-k-no",
      "near Kattha Mill, Shivpuri, Madhya Pradesh",
      "https://goo.gl/maps/impd8xXdjcWqWA6E8",
      "Nirogdham Health care &\nwellness centre",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Tongra, Road, Fatehpur, Shivpuri",
      "https://goo.gl/maps/1RNdhJr3xiXv6RfB9",
      "Siddhi Pharma and\nHealth center",
      "https://lh5.googleusercontent.com/p/AF1QipOeSNs1Jw6T_L1cHduynbBw9tHg-gNcx5Z8tzkl=w408-h306-k-no",
      "near M.M Hospital, Shivpuri",
      "https://goo.gl/maps/F5kHEQQUyAX9pCLx7",
      "Pradhan Cardiac &\nDental Care",
      "https://lh5.googleusercontent.com/p/AF1QipPLU897_Ybv_dSLGY4smQDrzv7XL1JgMkLMjmvg=w408-h306-k-no",
      "Shankar Colony, Shivpuri",
      "https://goo.gl/maps/MmuY2Gq4uyf5wYdG7",
      "Divyanshi Diagnostic\nCenter",
      "https://lh5.googleusercontent.com/p/AF1QipMbt8fR8JlRzmYczgbOn7Le_QdKjC69u-RKcy_k=w408-h306-k-no",
      "Shivpuri Rd, near M.M.Hospital, Shivpuri",
      "https://goo.gl/maps/181vuWYzd8tv4y1D6",
      "M M Hospital",
      "https://lh5.googleusercontent.com/p/AF1QipNdFqNcvwlbPtzhNFA1eN7x4dwIemvKYbvvSpF3=w408-h725-k-no",
      "Hathi Khana, Dakhar Mohalla,\nShivpuri",
      "https://goo.gl/maps/HQZoHHExq45KEocN7",
    ),
    PhotoItem(
      "Temples",
      "assets/cards/8.png",
      "Maa Rajeshwari Temple",
      "https://lh5.googleusercontent.com/p/AF1QipPoaJFfemHle9fjNLqvCf4GU9SaQILc_FTDnzbR=w408-h306-k-no",
      "CMF2+4V7, Madhav Vilas Palace,\nShivpuri",
      "https://goo.gl/maps/MsT21u1ct9kCncHP8",
      "Banganga Mandir",
      "https://lh5.googleusercontent.com/p/AF1QipOJ5vrD-AiPnqmAJX2N5GiJJn8J2BcL-PK-cBLz=w408-h306-k-no",
      "Shivpuri, Madhya Pradesh",
      "https://www.google.co.in/maps/place/Banganga+Mandir/@25.425981,77.6846172,17z/data=!3m1!4b1!4m5!3m4!1s0x3970b962a09c25f9:0x250ce28b141d3bd0!8m2!3d25.4259888!4d77.6868082",
      "Hanuman Temple",
      "https://lh5.googleusercontent.com/p/AF1QipPX2sEY9UDYLohZDAFnQGnPMtk-6h3Mr9TdrjeD=w408-h306-k-no",
      "Mahadev Chowk, Shivpuri, Madhya Pradesh",
      "https://www.google.co.in/maps/place/Hanuman+Temple/@25.4259768,77.6517865,13z/data=!4m9!1m2!2m1!1shanuman+temple!3m5!1s0x3970b95588f3e8e3:0x5b5c380a3f72517c!8m2!3d25.4236889!4d77.6572313!15sCg5oYW51bWFuIHRlbXBsZVoQIg5oYW51bWFuIHRlbXBsZZIBDGhpbmR1X3RlbXBsZZoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VSRE1tVnVYMk5SRUFF",
      "Kali Mata Temple",
      "https://lh5.googleusercontent.com/p/AF1QipNGm58yqzXBZGavzXyY5WKcbc5SttB9WKx07u72=w424-h240-k-no",
      "Jhingura, Kamla Ganj,\nShivpuri",
      "https://www.google.co.in/maps/place/Maa+Kali+Mandir/@25.4259685,77.6517865,13z/data=!4m9!1m2!2m1!1skali+temple!3m5!1s0x3970b9507d56ee5f:0x9a2b886596c66439!8m2!3d25.4328245!4d77.6644009!15sCgtrYWxpIHRlbXBsZZIBDGhpbmR1X3RlbXBsZQ",
      "Siddeshwar Temple",
      "https://lh5.googleusercontent.com/p/AF1QipMgcO2U8pzUkR9I5n-jd3gs6xNKLYlqYJE_kiiT=w408-h544-k-no",
      "CMC8+466, Govind Pura,\nShivpuri",
      "https://goo.gl/maps/zU4Xej98Wg6s5c7r7",
      "Jal Mandir",
      "https://lh5.googleusercontent.com/p/AF1QipOUo-0JhNRrgMZE-zMyA-s8Q9AqK-cMYvP58z6T=w408-h306-k-no",
      "CMJ5+93H, Gautam Bihar Colony,\nJalmandir colony, Shivpuri",
      "https://www.google.co.in/maps/place/Jal+Mandir/@25.4309257,77.6555544,17z/data=!3m1!4b1!4m5!3m4!1s0x3970b953bfb242ef:0xbe040261249337d7!8m2!3d25.4309327!4d77.6577442",
    ),
    PhotoItem(
      "Banks",
      "assets/cards/10.png",
      "HDFC Bank",
      "https://lh5.googleusercontent.com/p/AF1QipNyrjX_ozEcmrupAScxrDE2nOqT80AmOIyTxD6u=w408-h408-k-no",
      "Raj Mandir Bhawan, AB Road,\nMahal Colony, Shivpuri",
      "https://www.google.co.in/maps/place/HDFC+BANK/@25.4256411,77.6560459,17z/data=!4m9!1m2!2m1!1sHDFC+Bank!3m5!1s0x3970bbfe26676125:0x1edc79b04115a71f!8m2!3d25.4232403!4d77.6573334!15sCglIREZDIEJhbmsiA4gBAZIBBGJhbms",
      "Axis Bank",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.nfcw.com%2Fwp-content%2Fuploads%2F2020%2F06%2Faxis-bank-logo.jpg&f=1&nofb=1",
      "Block No 18, Ground & 1st Floor,\nAB Road, Pragati Bazar, Shivpuri",
      "https://www.google.co.in/maps/place/Axis+Bank/@25.3282954,77.5635682,12z/data=!4m9!1m2!2m1!1sAxis+Bank!3m5!1s0x3970bbffcaf54865:0x4ef19345fdd6d9f2!8m2!3d25.4272562!4d77.6564837!15sCglBeGlzIEJhbmsiA4gBAZIBBGJhbms",
      "Union Bank of India",
      "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fim.hunt.in%2Fcg%2FDehradun%2FCity-Guide%2FUBI-branches-dehradun.jpg&f=1&nofb=1",
      "CMC3+8QC, Near, Mahal Colony,\nShivpuri,",
      "https://www.google.co.in/maps/place/Union+Bank+of+India/@25.4503185,77.4396182,11z/data=!4m9!1m2!2m1!1sUnion+Bank+of+india!3m5!1s0x3970bbff9b3486f9:0x91a2269384b6863e!8m2!3d25.4208121!4d77.6543821!15sChNVbmlvbiBCYW5rIG9mIGluZGlhIgOIAQGSAQRiYW5r",
      "Punjab National Bank",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets1.cleartax-cdn.com%2Fs%2Fimg%2F2018%2F11%2F27231434%2Fpunjab-national-bank-logo.png&f=1&nofb=1",
      "Jhansi Tirahna Road, Maharana Pratap Chowk,\nMahal Colony, Shivpuri,",
      "https://www.google.co.in/maps/place/Punjab+National+Bank/@25.4501856,77.4396178,11z/data=!4m9!1m2!2m1!1spunjab+nation+bank!3m5!1s0x3970bbfe34701827:0x55ed886dd389c257!8m2!3d25.4222716!4d77.6567048!15sChRwdW5qYWIgbmF0aW9uYWwgYmFuayIDiAEBkgEEYmFuaw",
      "State Bank of India",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.oneindia.com%2Fimg%2F2016%2F10%2Fsbi-logo-19-1476891431.jpg&f=1&nofb=1",
      "CM93+J8P, Krishnapuram Colony,\nShivpuri",
      "https://www.google.co.in/maps/place/State+Bank+of+India/@25.4499198,77.4396171,11z/data=!4m9!1m2!2m1!1sstate+bank+of+india!3m5!1s0x3970bbf8a3b273ed:0x624f6af838c341e0!8m2!3d25.4163671!4d77.6540435!15sChNzdGF0ZSBiYW5rIG9mIGluZGlhIgOIAQGSARJwdWJsaWNfc2VjdG9yX2Jhbms",
      "Bank of Baroda",
      "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.india.com%2Fwp-content%2Fuploads%2F2016%2F08%2Fbank-of-baroda.jpg&f=1&nofb=1",
      "CMH4+JPM, OPP. SHIVNIVAS, NEW BLOCK,\nGANDHI PARK, Shivpuri",
      "https://www.google.co.in/maps/place/Bank+of+Baroda/@25.429095,77.6545966,17z/data=!3m1!4b1!4m5!3m4!1s0x3970bbfdfa7e4243:0x47169deed155ad42!8m2!3d25.4290759!4d77.6567753",
    ),
    PhotoItem(
      "Electronics",
      "assets/cards/11.png",
      "Rathi & Sons",
      "https://lh5.googleusercontent.com/p/AF1QipNUJQbTqV7MyHvlZ4pKagurnSJF_qSmIZasUByN=w408-h306-k-no",
      "Jal Mandir Rd, Pragati Bazar,\nBank Colony, Shivpuri",
      "https://www.google.co.in/maps/place/Rathi+%26+Sons+-+Best+Electronic+Shop+In+Shivpuri/@25.4276442,77.654078,17z/data=!3m1!4b1!4m5!3m4!1s0x3970b9548ac0d399:0x4701d9edb37ea203!8m2!3d25.4276442!4d77.6562667",
      "Computer gallery",
      "https://lh5.googleusercontent.com/p/AF1QipPCfogFr8Ge_I8n9T3SUzq2M16Rsj-Hs6ioJuNl=w516-h240-k-no",
      "1st floor mama tower shankar colony,\nRajeshwari Rd, Shivpuri",
      "https://www.google.com/maps/place/Computer+gallery/@25.4233951,77.6554099,17z/data=!3m1!4b1!4m6!3m5!1s0x3970b955621fb1af:0xb34a6808a0ae8bc!8m2!3d25.4233951!4d77.6554099!16s%2Fg%2F11cnc5v91q?authuser=0&hl=en",
      "Punjab Electronic",
      "https://lh5.googleusercontent.com/p/AF1QipOXYs8rmYGT0IkV8Qm8BU384FbSF_uJSrwynV3t=w408-h306-k-no",
      "Court Rd, Mahal Colony, Shivpuri",
      "https://goo.gl/maps/X6VsLSTELWKC65y49",
      "Computer World",
      "https://lh5.googleusercontent.com/p/AF1QipO9_7cYMkgN4qEZtWcO1D5prpD5xxK5tsDaPOi_=w408-h306-k-no",
      "Shakti Colony, Indira Colony,\nShivpuri",
      "https://goo.gl/maps/VhbePF7hoJ7crXeB7",
      "All In One Electronics",
      "https://img.freepik.com/free-vector/home-icon-pin-deal-isolated-white_1284-48167.jpg?t=st=1651404574~exp=1651405174~hmac=4cd904072ab7393cf2ce422c6b9463797a63254cb331c3df94e0f94d056ad85f&w=826",
      "Mahal Colony, Shivpuri",
      "https://www.google.co.in/maps/place/All+In+One+Electronics/@25.4206553,77.6523274,17z/data=!3m1!4b1!4m5!3m4!1s0x3970bbff9b68a115:0x33868feedc1e79ac!8m2!3d25.4206553!4d77.6545161",
      "Raj Electricals",
      "https://lh5.googleusercontent.com/p/AF1QipPnVCsmHaWFynoar39jwIu3n9Rr4dCeFTZPS7CB=w427-h240-k-no",
      "Raj electricals, Nichla Bazar,\nBank Colony, Shivpuri",
      "https://www.google.co.in/maps/place/Raj+Electricals/@25.4272872,77.6521745,17z/data=!3m1!4b1!4m5!3m4!1s0x3970b954c61d5655:0xc74691d4c9cb8d8e!8m2!3d25.4273571!4d77.6544711",
    ),
    PhotoItem(
      "Schools/colleges",
      "assets/cards/12.png",
      "Kendriya Vidyalaya",
      "https://www.yayskool.com/images/school/kendriya-vidyalaya-shivpuri-43176616.jpg",
      "Raghvendra Nagar,\nShivpuri",
      "https://goo.gl/maps/VJV7NbgSbipefxQB6",
      "Happy Days School",
      "https://lh5.googleusercontent.com/p/AF1QipOs4ksBSz8TaWu26dFir-Xc5Zp8zvrslaOHu9jS=w424-h240-k-no",
      "Katha Mill Colony, Thakur Pura,\nShivpuri",
      "https://goo.gl/maps/K6FLDg43MngXgdkd6",
      "Geeta Public School",
      "https://lh5.googleusercontent.com/p/AF1QipNw6mJdtENBFGhPo9hUu_jNsmzpVCB21MaaehqN=w408-h306-k-no",
      "Fatehpur Road, opp. Vidyapeeth School,\nShivpuri",
      "https://goo.gl/maps/nyPnzjJpPkkKifS68",
      "Govt. Polytechnic\nCollege",
      "https://lh5.googleusercontent.com/p/AF1QipOLwoVem5zFffHOc5OonWyYl-ceMEkrrUD2MPMY=w408-h306-k-no",
      "near Kattha Mill, Shivpuri",
      "https://goo.gl/maps/impd8xXdjcWqWA6E8",
      "Government Medical\nCollege",
      "https://lh5.googleusercontent.com/p/AF1QipMmzurXgvQJG73ZK3TvNN9o58Fb6ZPCJMYFqhIF=w408-h306-k-no",
      "near Kattha Mill, Shivpuri",
      "https://goo.gl/maps/impd8xXdjcWqWA6E8",
      "UIT RGPV Shivpuri",
      "https://lh5.googleusercontent.com/p/AF1QipOWWJnhWtRHZpbpQXRo_thuvO-V_pDGMp2k45Ik=w853-h240-k-no",
      "Gwalior Rd, Satanwada Kalan,\nShivpuri",
      "https://goo.gl/maps/TBc2MwnE5QHR4UaM6",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            color: Colors.black,
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // const PopupMenuItem<int>(
                //   value: 2,
                //   child: Text(
                //     "Technology Used",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ),
                );
              } else if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactUs(),
                  ),
                );
              } else if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactUs(),
                  ),
                );
              }
            },
          ),
        ],
        iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255) //change your color here
            ),
        centerTitle: false,
        title: const Text(
          "Everything Shivpuri",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: const Color.fromARGB(30, 30, 30, 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              indicatorColor: const Color.fromARGB(255, 0, 0, 0),
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/Everything Shivpuri.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/shivpuri_heritage.png_slideshow.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/play Store Banner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 12),
              child: Text(
                'Weather',
                style: GoogleFonts.roboto(
                    //textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    //fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            //
            //
            //
            // Weather
            WeatherCard(),
            //weather
            //
            //
            //
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Helpline',
                style: GoogleFonts.roboto(
                    //textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    //fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                // splashColor: Colors.grey,
                // highlightColor: Colors.blue,
                child: Container(
                  decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 214, 9, 9),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ],
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                          height: 65,
                          width: 65,
                          child: Icon(
                            Icons.call,
                            size: 60,
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 30),
                        child: Text(
                          'Helpline Numbers',
                          style: GoogleFonts.workSans(
                            color: const Color.fromARGB(255, 255, 252, 252),
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            //fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelplineRoute(
                        cardImage: '',
                        title: 'Helpline',
                        name1: 'Police Helpline',
                        number1: '100',
                        name2: 'CM Helpline',
                        number2: '181',
                        name3: 'Women Helpline',
                        number3: '1091',
                        name4: 'Child helpline',
                        number4: '1098',
                        name5: 'Fire Helpline',
                        number5: '101',
                        name6: 'Farmer Call Centre',
                        number6: '18001801551',
                        name7: 'Election',
                        number7: '1950',
                        name8: 'Toll Free Emergency Contact',
                        number8: '1079',
                        name9: 'Ambulance',
                        number9: '108',
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Explore',
                style: GoogleFonts.roboto(
                    //textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    //fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  crossAxisCount: 3,
                  mainAxisExtent: 82,
                ),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Category(
                            title: _items[index].title,
                            cardImage: _items[index].cardImage,
                            name1: _items[index].name1,
                            image1: _items[index].image1,
                            address1: _items[index].address1,
                            url1: _items[index].url1,
                            name2: _items[index].name2,
                            image2: _items[index].image2,
                            address2: _items[index].address2,
                            url2: _items[index].url2,
                            name3: _items[index].name3,
                            image3: _items[index].image3,
                            address3: _items[index].address3,
                            url3: _items[index].url3,
                            name4: _items[index].name4,
                            image4: _items[index].image4,
                            address4: _items[index].address4,
                            url4: _items[index].url4,
                            name5: _items[index].name5,
                            image5: _items[index].image5,
                            address5: _items[index].address5,
                            url5: _items[index].url5,
                            name6: _items[index].name6,
                            image6: _items[index].image6,
                            address6: _items[index].address6,
                            url6: _items[index].url6,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(_items[index].cardImage),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              _items[index].title,
                              style: GoogleFonts.workSans(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                // shadows: <Shadow>[
                                //   const Shadow(
                                //     offset: Offset(0.1, 0.1),
                                //     blurRadius: 1.0,
                                //     color: Color.fromARGB(255, 46, 46, 46),
                                //   ),
                                // ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                'Featured Places',
                style: GoogleFonts.roboto(
                    //textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    //fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 3, 3, 3),
                        Color.fromARGB(255, 10, 17, 54),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ],
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0, top: 0, bottom: 0),
                        child: ClipRRect(
                          //borderRadius: BorderRadius.circular(8.0),
                          child: SizedBox(
                            height: 160.0,
                            width: 160.0,
                            child: Image(
                              image: AssetImage(
                                  'assets/images/IMG_20211212_153451-01.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 30, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chhatri',
                              style: GoogleFonts.workSans(
                                color: const Color.fromARGB(255, 255, 252, 252),
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                //fontStyle: FontStyle.italic,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'The cultural heritage\nof Shivpuri',
                                style: GoogleFonts.workSans(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),

                                  //textStyle:Theme.of(context).textTheme.headline4,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w500,
                                  //fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChhatriDetails()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 10, 17, 54),
                        Color.fromARGB(255, 3, 3, 3),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ],
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          ClipRRect(
                            //borderRadius: BorderRadius.circular(8.0),
                            child: SizedBox(
                              height: 160.0,
                              width: 160.0,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/LRM_20220306_174256-01.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 30, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UIT RGPV',
                              style: GoogleFonts.workSans(
                                color: const Color.fromARGB(255, 255, 252, 252),
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                //fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'The higher education\nInstitution in Shivpuri',
                              style: GoogleFonts.workSans(
                                color: const Color.fromARGB(255, 255, 255, 255),

                                //textStyle:Theme.of(context).textTheme.headline4,
                                fontSize: 15,
                                //fontWeight: FontWeight.w500,
                                //fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UitDetails()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 16),
              child: Container(
                //padding: const EdgeInsets.all(8),
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Everything Shivpuri.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 57, 14, 177),
                        Color.fromARGB(255, 214, 9, 9),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ],
                  ),
                  height: 160,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 30, right: 16),
                    child: Column(
                      children: [
                        Text(
                          'brought to you by',
                          style: GoogleFonts.josefinSans(
                            color: const Color.fromARGB(255, 255, 252, 252),
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'dotResolution Studio',
                                  style: GoogleFonts.workSans(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),

                                    //textStyle:Theme.of(context).textTheme.headline4,
                                    fontSize: 15,
                                    //fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: _launchURL,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    final url = Uri.encodeFull('https://dresolution.tech/');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
