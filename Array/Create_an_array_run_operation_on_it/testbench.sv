`include "different_classes.svh"
`include "functions.svh"


module tb;
  
  array_sort#(6,101,1000) array_inst_1;
  
  square square_inst_1;
  
  multiply_each_with_something mews_inst_1;
  
  initial begin
    
    //Instantiation of classes
    square_inst_1 = new();
    array_inst_1 = new square_inst_1;
    
    //Randomization
    assert(square_inst_1.randomize());
    
    //Copying Randomized array to array_sort class(here, it can be considered as base class)
    array_inst_1.copy_specific(square_inst_1);
    
    //Opeartion
    square_inst_1.square_it();
    
    //display array before/after Operation
    array_inst_1.display();
    square_inst_1.display();
    
    //Sorting the operated class
    square_inst_1.sort_it();
  
  end
endmodule
    

