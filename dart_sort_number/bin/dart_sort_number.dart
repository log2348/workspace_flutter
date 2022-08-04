void main() {
  List<int> numberList = [11, 9, 1, 5, 101, 10, 6, 7, 100, 13, 4, 4, 7, 0, 22, 3, 12, 2, 3, 33];
  sortNumber(numberList);
}

void sortNumber(List<int> list) {

  bool isSorted = false;

  while (!isSorted) {
    for (int i = 0; i < list.length - 1; i++) {
        int firstNum = list[i];
        int secondNum = list[i + 1];
      if (firstNum > secondNum) {
        list[i] = secondNum;
        list[i + 1] = firstNum;
      } else {
        list[i] = firstNum;
        list[i + 1] = secondNum;
      }
    }

    // 정렬된 리스트 확인하고
    // 하나라도 오름차순으로 정렬이 안 되어있으면
    // while문을 나갈 수 없다
    for (int i = 0; i < list.length - 1; i++) {
      if (list[i] > list[i + 1]) {       
        isSorted = false;      
        break;    
      } else {
        isSorted = true;
      }
    }
  }

  print('정렬 확인 : ');
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}
