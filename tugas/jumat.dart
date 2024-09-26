import 'dart:io';
import 'dart:math';

import 'bubble.dart';

void main() {
  print("============================================================");
  print("=======Masukkan Jumlah Angka yang ingin digenerate : =======");
  print("============================================================");
  int i = 0;
  int? angka = int.parse(stdin.readLineSync()!); 
  List<int> angkap = [];

  Random random = Random();

  while ( i <= angka ) {
    i++;
    int angkarendom = random.nextInt(10000+1);
    angkap.add(angkarendom);

    print(angkap);
  }

  print("Angka-Angka yang telah diacak adalah : ${angkap}");

  print("============================================================================");
  print("Pilih angka untuk memilih ingin menggunakan Bubble Sort, Inversion, Shuffle, Piramida, Piramida Berurut ");
  print("1. Bubble Sort");
  print("2. Inversion");
  print("3. Shuffle");
  print("============================================================================");
  int? pilihwoe = int.parse(stdin.readLineSync()!); 
  DateTime mulai = DateTime.now();

  switch (pilihwoe) {
    case 1:
      bubbleSort(angkap);
      print("Angka-Angka yang sudah diurutkan menggunakan Bubble Sort adalah : ${angkap}");
    case 2:
      List<int> inversiCount = angkap.reversed.toList();
      print("Hasil Inversion adalah : $inversiCount"); 
    case 3:
      angkap.shuffle();
      print("Angka-Angka yang sudah diacak menggunakan Shuffle adalah : ${angkap}");
    default : 
      print("Pilihan yang anda masukkan salah!");
  }

  DateTime hajar = DateTime.now();
  Duration executionTime = hajar.difference(mulai);
  print("Waktu eksekusi: ${executionTime.inMilliseconds} ms");
}