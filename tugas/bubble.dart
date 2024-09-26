import 'comparebubble.dart';

void bubbleSort(List<int> arr) {
  int n = arr.length;
  bool swapped = true;

  while (swapped) {
    swapped = false; 
    swapped = compareAndSwap(arr, n, swapped);
    n--; 
  }
}