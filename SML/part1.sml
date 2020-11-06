fun f(x,y) = x*x+y+1.5;

-3
val it = 3 : int

- val three = 3;
val three = 3 : int

- three; val it = 3 :int

-3+2;
val it = 5 : int
-sqrt (2.0);
val it = 1.41421356237309 : real

- val five = 3+2;

- three + five;

- not(true);

- true andalso false;

- fun double(x) = 2*x;
val double = fn : int -> int

- fun max(x:int, y:int, z:int) =
= if ((x>y) andalso (x>z)) then x
= else (if (y>z) then y else z);
val max = fn : int * int * int -> int
- max(3,2,2);
val it = 3 : int

- factorial(5);
val it = 120 : int
- factorial(10); val it = 3628800 :int

- fun gcd(m,n):int = if m=n then n
= else if m>n then gcd(m-n,n)
= else gcd(m,n-m);

val gcd = fn : int * int -> int

- gcd(12,30);
val it = 6 : int
- gcd(1,20);
val it = 1 : int
- gcd(126,2357);
val it = 1 : int
- gcd(125,56345);
val it = 5 : int

- val t1 = (1,2,3);
val t1 = (1,2,3) : int * int * int
- val t2 = (4,(5.0,6));
val t2 = (4,(5.0,6)) : int * (real * int)
- val t3 = (7,8.0,"nine");
val t3 = (7,8.0,"nine") :
int * real * string

- [1,2,3];
val it = [1,2,3] : int list
- [true,false, true];
val it = [true,false,true] : bool list
- [[1,2,3],[4,5],[6]];
val it = [[1,2,3],[4,5],[6]] :int list list

- hd[1,2,3];
val it = 1 : int
- hd[[1,2],[3]]; val it = [1,2] : int list

- tl[1,2,3];
val it = [2,3] : int list
- tl[[1,2],[3]]; val it = [[3]] : int list list

- 5::[];
val it = [5] : int list
- 1::[2,3];
val it = [1,2,3] : int list
- [1,2]::[[3],[4,5,6,7]];
val it = [[1,2],[3],[4,5,6,7]] : int list list

- [1,2,3]=[1,2,3];
val it = true : bool
- [1,2]=[2,1];
val it = false : bool
- tl[1] = [];
val it = true : bool

- concat([1,2],[3]);
val it = [1,2,3] : int list
- concat([],[1,2]);
val it = [1,2] : int list
- concat([1,2],[]);
val it = [1,2] : int list
