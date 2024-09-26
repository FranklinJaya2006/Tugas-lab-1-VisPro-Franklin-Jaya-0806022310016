bool compareAndSwap(List<int> arr, int n, bool swapped) {
  int i = 0; 
  while (i < n - 1) {

    if (arr[i] > arr[i + 1]) {
    
      int temp = arr[i];
      arr[i] = arr[i + 1];
      arr[i + 1] = temp;
      swapped = true;
    }
    i++; 
  }
  return swapped; 
}
