void sortFromtoTo({
  required List<String> from,
  required List<String> to,
  required List<int> dis,
}) {
  List<int> distance = [];
  distance.addAll(dis);
  dis.sort();
  String x, y;
  int z;
  for (int i = 0; i < distance.length; i++) {
    for (int j = 0; j < distance.length; j++) {
      if (dis[i] == distance[j]) {
        z = distance[i];
        distance[i] = distance[j];
        distance[j] = z;
        x = from[i];
        y = to[i];
        from[i] = from[j];
        to[i] = to[j];
        from[j] = x;
        to[j] = y;
      }
    }
  }
}
