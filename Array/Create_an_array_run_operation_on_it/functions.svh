//Functions
   
function void array_sort::sort_it();
    array.sort();
    $display("Operated array after sorting: %p",array);
endfunction
  
function void array_sort::copy_specific(array_sort_t from);
      this.array = from.array;
endfunction

function void array_sort::display();
  $display("The initial array is: %p",this.array);
endfunction



function int square::square_it();
    foreach(array[i]) array[i] = array[i]*array[i];
    return 1;
endfunction

function int square::display();
  $display("Array after squaring each element: %p",array);
    return 1;
endfunction
    
function int multiply_each_with_something::multiply_it_with(int multiplicand);
    foreach(array[i]) array[i] = array[i] * multiplicand;
    return 1;
endfunction

function int multiply_each_with_something::display();
  $display("Array after multiplying each element by 4: %p",array);
    return 1;
endfunction

