var x,y,z: int;

procedure top()
modifies x;
{
   x := x + 1;
}

procedure foo()
modifies x,y;
{
   y := 1;
   call top();
}

procedure bar()
modifies x,z;
{
   z := 1;
   call top();
}

procedure {:entrypoint} main() returns (result: int)
modifies x;
{
   var count: int;
   havoc count;
   x := 0;
         if (count == 1) { 
	 call foo();
	 }
	 else if (count == 2) {
	 call bar();
	 }
	 else if (count == 3) { 
	 call foo();
	 }
	 else if (count == 4) {
	 call bar();
	 }
	 else if (count == 5) { 
	 call foo();
	 }
	 else if (count == 6) {
	 call bar();
	 }
	 else if (count == 7) { 
	 call foo();
	 }
	 else if (count == 8) {
	 call bar();
	 }
	 else if (count == 9) { 
	 call foo();
	 }
	 else if (count == 10) {
	 call bar();
	 }
	 else {
	  call top();
	 }

   
   assert(x == 1);  
   //assert(false);
}
