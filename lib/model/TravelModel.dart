// Dynamic variable
// make constructor for variable gave value

class TravelModel {
  String name;
  String location;
  String img;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;


  TravelModel(
      {
        required this.name,
        required this.location,
        required this.img,
        required this.distance,
        required this.temp,
        required this.rating,
        required this.discription,
        required this.price,
      }
      );
}

List<TravelModel> travelList = [
  TravelModel(name: "New York",
      location: "Us - New York",
      img: "assets/images/New-York.jpg",
      distance: "7",
      temp: "37",
      rating: "4.5",
      discription: "Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 bce. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine.",
      price: "3500"
  ),
  TravelModel(name: "Paris",
      location: "Fr - Paris",
      img: "assets/images/paris.jpg",
      distance: "7",
      temp: "37",
      rating: "5",
      discription: "Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 bce. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine.",
      price: "46500"
  ),
  TravelModel(name: "London",
      location: "Uk - London",
      img: "assets/images/london.jpg",
      distance: "7",
      temp: "37",
      rating: "4.5",
      discription: "Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 bce. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine.",
      price: "6700"
  ),
  TravelModel(name: "Istanbul",
      location: "Tr - istanbul",
      img: "assets/images/istanbul.jpg",
      distance: "7",
      temp: "37",
      rating: "4.5",
      discription: "Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 bce. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine.",
      price: "3500"
  ),
];