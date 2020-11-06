#include <iostream> // Lets use function like cout
#include <vector> // For Vector
#include <string> // For String
#include <fstream> // File I/O
using namespace std; //To avoid typing cout as std::cout constantly

class Superhero {  // prints basic information
  public:
    string name;
    string heroName;
    int age;
    string superpower;

  void printSuperHero(){
    cout << "Welcome " << this -> name << " aka " << this -> heroName <<  endl;
    cout << "Age: " << this -> age <<  endl;
    cout << "Superpower: " << this -> superpower <<  endl;
  }
};

class Avenger {  //prints iconic line
  public:
    string iconicline;

  void printIconicLine(){
    cout << "Iconic Line: " << this -> iconicline << endl;
  }
};

//Ironman is a Superhero, is an Avenger
class Ironman : public Superhero, public Avenger{ //inherits from 2 parent
                                                  //classes
  public: Ironman(){
    name = "Tony Stark";
    heroName = "Ironman";
    age = 48;
    superpower= "Genius Level Intellect with Powered Armor Suit";
    iconicline= "Have you ever tried Shawarma?";
  }

  void printMarkSuit(){
    int * ptrMark; //pointer is initialized
    ptrMark = (int*)malloc(sizeof(int)); //pointer allocates space for an int
    *ptrMark = (rand()% 85) + 1; //dereferences the address, then randomly
                                // assigns int from 1-85 to the address

    cout << "Putting on Suit: Mark " << *ptrMark << " at address: "
    << ptrMark << endl;
    //print statement prints the int value then address

    free(ptrMark); //frees the previously allocated space
  }
};

int main()
{
    Ironman Tony; // creates Ironman data

    //use of methods from class and parent classes
    Tony.printSuperHero();
    Tony.printIconicLine();
    Tony.printMarkSuit();

    return 0;
}
