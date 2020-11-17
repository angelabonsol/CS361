concat([1,2], [3,4,5]);
val it = [1,2,3,4,5] : int list
concat([],[1,2]);
val it = [1,2] : int list
concat([1,2],[]);
val it = [1,2] : int list

length[1,2,3];
val it = 3 : int
length[[5],[4],[3],[2,1]];
val it = 4 : int
length[];
val it = 0 : int

doubleall[1,3,5,7];
val it = [2,6,10,14] : int list

reverse [1,2,3];
val it = [3,2,1] : int list
reverse nil;

val it = [] : ?.X1 list

(1,2) = (2,3);
val it = false: bool
[1, 2] = [1, 2, 3];
val it = false: bool
[1, 2] <> [1, 2, 3];
val it = true: bool
1.2 = 1.2;


fun fact(0) = 1
| fact(n) = n*fact(n-1);
val fact= fn : int -> int


fun square(x) = (x:int)*x;
val square = fn : int -> int
apply(square,[2,3,4]);
val it = [4,9,16] : int list

apply(double,[1,3,5,7]);
val it = [2,6,10,14] : int list

fun exp(x,0) = 1
| exp(x,y) = x * exp(x,y-1);
val exp: fn: int * int -> int
fun exp1 x 0 = 1
| exp1 x y = x * exp1 x y-1;
val exp1: fn: int -> int -> int

fun plus n Zero = n
| plus n (Suc(p)) = Suc(plus n p);
val plus = fn : Nat -> Nat -> Nat
plus (Suc(Zero)) (Suc(Zero))
val it = Suc (Suc Zero) : Nat

fun times n Zero = Zero
| times n (Suc(p)) = plus (times n p) n ;
val times = fn : Nat -> Nat -> Nat
times (Suc(Zero)) (Suc(Zero))
val it = Suc Zero : Nat

lookup(Tree,6);
val it = true : bool
lookup(Tree,1);
val it = false : bool
lookup(Tree,9);
val it = false : bool
lookup(Tree,8);
val it = true : bool
lookup(btempty,6);
val it = false : bool

(* Binary tree processing *)

datatype ’a BinaryTree = btempty |
bt of ’a * ’a BinaryTree * ’a BinaryTree ;

fun left subtree btempty = btempty
| left subtree(bt( ,left, )) = left;

fun right subtree btempty = btempty
| right subtree(bt( , ,right)) = right;

exception label has nil argument;

fun label btempty = raise label has nil argument
| label(bt(value, , )) = value;

(* Sample binary trees *)

val Tree = bt(2,btempty,
bt(3,btempty,
bt(7,bt(6,bt(5,btempty,btempty),
btempty),
bt(8,btempty,btempty))
)
);

val Tree1 = bt(3,btempty,btempty);

val Tree2 = bt(5,bt(1,btempty,btempty),btempty);

val Tree3 = bt(7,bt(4,btempty,btempty),
bt(12,btempty,btempty));

val Tree4 = bt("*",
bt("/",
bt("-",bt("7",btempty,btempty),
bt("a",btempty,btempty) ),
bt("5",btempty,btempty) ),
bt("exp",
bt("+",bt("a",btempty,btempty),
bt("b",btempty,btempty) ),
bt("3",btempty,btempty) ));

val Expression = bt("+",
bt("*",
bt("+",
bt("2",btempty,btempty),
bt("5",btempty,btempty) ),
bt("*", bt("3",btempty,btempty),
bt("4",btempty,btempty) ) ),
bt("*", bt("1",btempty,btempty),
bt("6",btempty,btempty) ) );

lookup(Tree,6);

lookup(Tree,1);
lookup(Tree,8);
lookup(Tree,9);
lookup(btempty,6);
inorder(Tree);
preorder(Tree);
postorder(Tree);
inorder(Expression);
preorder(Expression);
postorder(Expression);
