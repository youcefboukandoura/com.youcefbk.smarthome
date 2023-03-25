class Room {
  final String name;
  final String image;
  final int connectedDevices;
  final int temperature;
  final int humidity;

  Room({
    required this.name,
    required this.image,
    required this.connectedDevices,
    required this.temperature,
    required this.humidity,
  });
}
