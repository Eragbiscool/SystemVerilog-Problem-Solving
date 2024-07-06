//Classes

class array_sort#(parameter ARRAY_SIZE = 3,LOW = 0,HIGH = 100);
  typedef array_sort#(ARRAY_SIZE,LOW,HIGH) array_sort_t;
  rand int array[ARRAY_SIZE];
  constraint array_const {foreach(array[i]) LOW < array[i] & array[i] <HIGH; }
  extern function void sort_it();
  extern function void copy_specific(array_sort_t from);
  extern function void display();  
endclass

class square extends array_sort #(6,101,1000);
  extern function int square_it();
  extern function int display();
endclass

class multiply_each_with_something extends array_sort #(6,101,1000);
  extern function int multiply_it_with(int multiplicand);
  extern function int display();
endclass
