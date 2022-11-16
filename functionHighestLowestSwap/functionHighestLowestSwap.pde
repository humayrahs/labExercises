void setup() {
  noLoop();
}

void draw() {
  int [] numArray = {0, 5, 3, 2, 7, 1};
  
  println(swap(numArray));
}

int [] swap(int [] unSort) {
  //int highest = unSort[0];
  //int lowest = unSort[0];
  int highPos = 0;
  int lowPos = 0;

  for (int i = 1; i<unSort.length; i++) { //SEARCH ARRAY
    if (unSort[i]>unSort[highPos]) {  //IF CURRENT ITEM IS BIGGER THAN THE LARGEST ITEM
      //highest = unSort[i];
      highPos = i;
    } else if (unSort[i]<unSort[lowPos]) {  //IF CURRENT ITEM IS SMALLER THAN THE SMALLEST ITEM
      //lowest = unSort[i];
      lowPos = i;
    }
  }

  //DEBUGGING
  //println(unSort[highPos] + " is the largest number.");
  //println(unSort[lowPos] + " is the smallest number.");

  int temp = 0;
  temp = unSort[highPos];
  unSort[highPos] = lowPos;
  unSort[lowPos] = temp;


  return unSort;
}
