void tampilkanPiramida(List<int> angka) {
  int i = 0;
  while (i < angka.length) {
    String spasi = ' ' * (angka.length - i - 1);
    String baris = angka.sublist(0, i + 1).join(' ');
    print('$spasi$baris');
    i++;
  }
}