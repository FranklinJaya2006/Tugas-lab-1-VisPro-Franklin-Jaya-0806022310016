import 'dart:io';
import 'dart:math';

import 'bubble.dart';
import 'piraberurut.dart';
import 'pirabiasa.dart';

void main() {
  print("============================================================");
  print("=======Masukkan Jumlah Angka yang ingin digenerate : =======");
  print("============================================================");
  
  int? jumlahAngka = int.parse(stdin.readLineSync()!);
  List<int> angkaAcak = [];

  Random random = Random();
  int i = 0;

  while (i < jumlahAngka) {
    int angka = random.nextInt(100);
    angkaAcak.add(angka);
    i++;
  }

  print(angkaAcak);
  print("====================");
  print(" CHOOSE NUMBERS 1-5 ");
  print("====================");
  print("1. Bubble-Sort");
  print("2. Inversi");
  print("3. Shuffle");
  print("4. Piramid");
  print("5. Piramid Berurut");
  print("Answer : ");
  
  int? pilihan = int.parse(stdin.readLineSync()!);

  if (pilihan == 1) {
    bubbleSort(angkaAcak);
    print("Angka-Angka yang sudah diurutkan menggunakan Bubble Sort adalah : $angkaAcak");
  } else if (pilihan == 2) {
    List<int> inversiCount = angkaAcak.reversed.toList();
    print("Hasil Inversion adalah : $inversiCount");
  } else if (pilihan == 3) {
    angkaAcak.shuffle();
    print("Angka-Angka yang sudah diacak menggunakan Shuffle adalah : $angkaAcak");
  } else if (pilihan == 4) {
    print("==============");
    print("PIRAMIDA BIASA");
    print("==============");
    tampilkanPiramida(angkaAcak);
  } else if (pilihan == 5) {
    print("==============");
    print("PIRAMIDA BERURUT");
    print("==============");
    bubbleSort(angkaAcak);
    tampilkanPiramidaBerurut(angkaAcak);
  }
  print("");
  print("Sekian Terima Gaji");
}




