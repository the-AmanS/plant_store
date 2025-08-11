class Plant {
  final String id;
  final String name;
  final String category;
  final double price;
  final String image;
  final String description;
  final int light;
  final int water;
  final int temperature;
  final bool isFavorite;

  Plant({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    required this.description,
    required this.light,
    required this.water,
    required this.temperature,
    this.isFavorite = false,
  });

  static List<Plant> samplePlants = [
    Plant(
      id: '1',
      name: 'Monstera Deliciosa',
      category: 'Indoor',
      price: 29.99,
      image: 'assets/images/plant1.png',
      description: 'The Swiss cheese plant, or Monstera deliciosa, is famous for its quirky natural leaf holes. A vibrant and low-maintenance addition to any interior space.',
      light: 7,
      water: 5,
      temperature: 6,
    ),
    Plant(
      id: '2',
      name: 'Snake Plant',
      category: 'Indoor',
      price: 19.99,
      image: 'assets/images/plant2.png',
      description: 'The Snake Plant, or Sansevieria, is a hardy succulent that can grow in almost any condition. Perfect for beginners and busy plant owners.',
      light: 4,
      water: 2,
      temperature: 7,
    ),
    Plant(
      id: '3',
      name: 'Peace Lily',
      category: 'Indoor',
      price: 24.99,
      image: 'assets/images/plant1.png',
      description: 'The Peace Lily is an easy-care houseplant that brings elegance and harmony to any space with its glossy leaves and white flowers.',
      light: 5,
      water: 6,
      temperature: 5,
    ),
  ];

  static List<String> categories = [
    'Popular',
    'Outdoor',
    'Indoor',
    'Top Pick',
  ];
}