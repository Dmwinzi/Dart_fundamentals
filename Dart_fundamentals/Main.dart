
printSquare(int num){
  print(num * num);
}

String getname(){
  print("Fetched name");
  return "Daniel Kavisu";
}

main(){
   print("Hello mars");


   //variables
   //var,(const/final) (automatic inference)  || data type variable name
    var dart  = "dart is kotlin with a semi-colon";
    const  y  = 3;
    int  x  = 5;
    print(dart);
    print(x+y);

    //null safety
    //! - assert it's not null , ? -nullable , ?? - null aware
    int? num  = null;
    num = 4;
    //printSquare(num ?? 3);
    printSquare(num);

    //Late initialization
    //Lazy inittialization
    late var name  =  getname();
    print(name);

    //conditions
    var temp1  = 60;
    var temp2  = 40;

    if(temp1 > temp2){
      print("Temp1 is greater than temp2");
    }


    String color  = "";

    if(color == "Red"){
      print("true");
    }else if(color.isEmpty){
      print("colorless");
    } else {
      print("not color red");
    }

    //Conditional expression
    var numa  = 2;
    var numb  = numa < 0 ? 0 : numa; // if numa < 0 numb = 0, else numb = numa

    print(numb);

    //Switch
  int  days  = 4;

  switch(days){
    case 1 : print("Monday");
       break;
    case 2 : print("Tuesday");
        break;
    case 3  : print("Wednesday");
        break;
    case 4 :  print("Thursday");
       break;
    case 5 : print("Friday");
     break;
    case 6 : print("Saturday");
      break;
    case 7 : print("Sunday");
    default : print("Invalid day");

  }

  //loops

   //while loops
  var number = 3;
  var i = 1;
  var j = 1;
  while(i<11){
    var x  = number * i;
    if(x % 2 == 0){
      print(x);
    }
    i++;
  }

  //do while
  do{
    print(j);
    j++;
  }while(j<11);

  // for loop

  for(var d = 1;d<11;d++){
      var mul  = 5 * d;
      print(mul);
  }


  
  //functions
  /* return type functionname()
  * */

    //parameterized function
   var numwords  = countwords("Hey i am learning dart yikes!");
  print(numwords);

  //optional  function[]
  student(200, "Blob");
  //named function{}
  student1(400, "DOkie",dob : null);

  //high order functions
  var numbers  = [2,2,4,4];

  //lambda expression
  Function reslt  = (int sum) => print(sum);

  getsum(numbers, reslt);

  func()();

    //Collections in dart
    // List []
   //List  lst  = List(5)  - fixed list
    var people  = ["Ann","James","Ian"];

    people.add("Njoroge");
    people.removeAt(3);

    //EMPTY LISTS
    var pple  = [];
    pple.add("John");
    pple.add("Kamau");
    pple.add("Mwinzi");


    for(var persons in people){
      print(persons);
    }

    //Set {}
     var animals = {"cow","dog","goat","Sheep"};

     //EMPTY SET
      var cars =<String> {};
      cars.add("Subaru");
      cars.add("BMW");
      cars.add("MERCEDES");
      cars.add("Subaru");

    for(var animal in animals){
        print(animal);
    }

    //Map { key : value}
   var stude  = {
     1 : "STD_DAN",
     2 : "STD_IAN",
     3 : "STD_PIUS",
     4 : "STD_MERCY",
     5 : "STD_OGUTU",
   };


    print(stude[1]);

    // EMPTY MAP <key,value>{}
    var std  = <int,String> {};
    std[1] = "Kavisu";

}





//paramaterized function
int countwords(String word){

  var wordcount  = word.split(" ").length;

  return wordcount;
}

//paramaterized function optional []
void student(int id,String name,[int? dob]){

  print("id  $id ");
  print("name $name");
  print("dob $dob");

}


//named parameters {} - they are by default optional
void student1(int id,String name,{int? dob}){
  print("id  $id ");
  print("name $name");
  print("dob $dob");
}


//high order functions
   void getsum(List<int> numbers, Function  result){
      var sum  = 0;
      for(var i = 0;i < numbers.length;i++){
         sum += numbers[i];
      }
      result(sum);
   }

   Function func(){
      return () => print("Funcion within a function");
   }