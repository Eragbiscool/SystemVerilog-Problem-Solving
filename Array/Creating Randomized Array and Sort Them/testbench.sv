class array_sort#(parameter ARRAY_SIZE = 3,LOW = 0,HIGH = 100);
  rand int array[ARRAY_SIZE];
  constraint array_const {foreach(array[i]) LOW < array[i] & array[i] <HIGH; }
endclass


module tb;
  array_sort#(6,101,1000) array_sort_inst_1;
  int array[];
  
  initial begin
    array_sort_inst_1 = new();
    array_sort_inst_1.randomize();
    array = new[$size(array_sort_inst_1.array)];
    array = {array_sort_inst_1.array};
    array.sort();
    $display("Randomized array we are going to input: %p",array_sort_inst_1.array);
    $display("Sorted Array we are going to compare the output with: %p",array);
  end
  
  
endmodule
