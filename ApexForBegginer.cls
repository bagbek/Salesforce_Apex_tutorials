
/*
---------------------Web Technologies the most popular ones
FrontEnd--> HTML, JavaScript, CSS, (React, Angular, Vue.js)  
BackEnd--> Java, Node.js, Go, php, Python
DataBase--> MySQL, PostgreSQL, ORACLE, SQLServer, MongoDB, Redis

----------------------Salesforce Web Technologies:
FrontEnd--> SF User Experience: Classic--> (2014)Lightning
Classic UI: Visualforce
Lightning UI: Aura Component, Lightning Component
BackEnd--> Apex(works with Object), Flows
How the object store a data: it store a data in tabular format. 

-----------------------Declarative Tools in SF:
Workflow Rule: Send Email & Outbound Message, Create Task, Update Record(No child Record Update)
Prosses Builder: Multiple Steps, More Actions, Child record update, Cannot update unrelated records, Cannot delete a record.
Visual Flow: Most powerful Declarative tool, Execution is slower than Apex, Debbuging can be difficult sometimes.

-----------------------Code Editors:
SF Setup, Developer Console, VS Code, Illuminated Cloud

-----------------------Hello World in the Apex: */
System.debug('Hello World');
//to see the output you to open Logs and check the Debug Only
System.debug('My second Apex Code');

//--------------------Variables & Heap
String greeting = 'Hello World';
system.debug(greeting);
/* These variables, they store their value in the program heap size and a heap is a size of ram that 
is allocated to a particular program. Sometimes you notice that your operating system doesn't respond 
well or it shows some lag, maybe because a problem is using high memory or maybe that program isn't responding.
And one of the reason could be that program is using more heap size. So, you need to be very cautious when you 
use these variables because each and every variable is going to consume some memory. In Apex, there is a hard
limit that each and every Apex program can have up to a heap size of 6 MB and in computer terms, 6 MB is a lot. 
So, you should get away with the heap size generally but if you have so many variables declared and maybe like,
you are not using it or you are not clearing the values or nullifying your variables, then you may hit the heap 
size error in your Apex program.

-----------------------Primitive Data Types  
We cannot assing 'String' to the Integer if we did it gonna give Error that: Example below:  */
Integer greeting = 'Hello World'; // Illigal Assignment from String to Integere
system.debug(greeting);

//Primitive Data Types: String, Integer, Boolean, Long, Decimal, Double, Date, Time, DateTime, Blob, ID
String greeting = 'Hello World';
system.debug(greeting);

Integer rollNum = 1233;
system.debug(rollNum);

Boolean amIDev = true;
system.debug(amIHero);

Long worldPopulation = 70000000000L;
system.debug(worldPopulation);

Decimal myGPA = 3.8;
system.debug(myGPA);

Double lightSpeed = 93000000/186000;
system.debug(lightSpeed);

Date tDate = Date.newInstance(2019, 7, 13);
system.debug(tDate);

Time currentTime = Time.newInstance(2, 23, 0, 0);
system.debug(currentTime);

//-------------------String Class Methods
// For more you can check the official link from SF below:
//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
String str = ' I am a string variable ';
System.debug('Actual String: '+str);

// capitalize string
System.debug('Capitalize String: '+str.capitalize());

// contains example
System.debug('Contains ring? :'+ str.contains('ring'));

// convert to upper case
System.debug('Upper case: '+str.toUpperCase());
// convert to lower case
System.debug('Lower case: '+str.toLowerCase());

// equals
System.debug('Is equal to ring?: '+str.equals('ring'));
String str1 = 'Jack';
String str2 = 'jack';
System.debug('str1 equals str2: '+str1.equals(str2));
System.debug('str1 equals str2 ignore case: '+str1.toLowerCase().equals(str2.toLowerCase()));

// remove
System.debug('Remove ring: '+str.remove('ring'));

// replace
System.debug('Replace ring: '+str.replace('ring', 'rong'));

// split
System.debug('Split by space: '+str.split(' '));


/* -----------------Escape Character: we escape using backslash (\)------------------------
\b -one backspace character,        \n -New line,         \t -Tab,
\r -Carriage return, \o -One ASCII nul character        */
String str = 'My team\'s name is \'SFDCFacts Academy\'. \n We work on apex.';
System.debug(str);


/*-------------------Collections in Apex -->1) List Datatype-------------------------
List index starts from 0.  List is a ordered collection. For more you can check below official site:
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_list.htm 
*/

List<Integer> rollNumbers = new List<Integer>{11008890, 11008100, 11007231};
System.debug(rollNumbers);

rollNumbers.add(89897767);
rollNumbers.add(89897764);
rollNumbers.add(89897765);

System.debug(rollNumbers);

// get item on index 1
Integer rollNum = rollNumbers.get(1);
System.debug(rollNum);
System.debug(rollNumbers.get(1)); // short way to write a code

// add item on index 4
rollNumbers.add(4, 99990000);
System.debug(rollNumbers);

// get the list size -it shows how many items in it
System.debug(rollNumbers.size()); 

// remove the item on index 3
rollNumbers.remove(3); 
System.debug(rollNumbers);
System.debug(rollNumbers.size());

// update item on index 1
rollNumbers.set(1, 44444444);
System.debug(rollNumbers);

// clear the list
rollNumbers.clear();
System.debug(rollNumbers);
System.debug(rollNumbers.size());

// below line will throw an error
rollNumbers.set(1, 44444444);
System.debug(rollNumbers);


/*-------------------Collections in Apex -->2) Set Datatype------------------------------------
It directly stores your data without the indexes. So, that's why we call it unordered collection of elements.
The most important property of a set is, it doesn't allow Duplicate Data.
Unlike list, set doesn't have any indexes. It simply stores your data as it is without any indexes.
And if you want to get an item, it will directly get it by its value. So, in list, we used to get an item by its index. 
For more you can check below official site:
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_set.htm#apex_System_Set_methods
*/
Set<Integer> rollNumbers = new Set<Integer>{11008890, 11008100, 11007231};
System.debug(rollNumbers);

rollNumbers.add(89897767);
rollNumbers.add(89897764);
rollNumbers.add(89897765);

System.debug(rollNumbers);

// adding duplicate values - NOT ALLOWED
rollNumbers.add(89897767);
System.debug(rollNumbers);

// check if set has an item (contains - true or false)
System.debug(rollNumbers.contains(89897764));
System.debug(rollNumbers.contains(345345));

// delete an item
rollNumbers.remove(89897765);
System.debug(rollNumbers);

// get set size
System.debug(rollNumbers.size());

// check if set is empty (isEmpty - true or false)
System.debug(rollNumbers.isEmpty());

// remove all items
rollNumbers.clear();
System.debug(rollNumbers.isEmpty());


/*-------------------------------Collections-->3) Map Datatype--------------------------------
It stores the data in a key value pair.

*/
Map<Integer, String> class2020 = new Map<Integer, String>();

/* add a new student/item.   
to add a new item in a map, we need to use the 'put' method. In the set and list, we use the 'add' method  */
class2020.put(11008890, 'Smith');

System.debug(class2020);

class2020.put(11008891, 'Harry');
class2020.put(11008892, 'Rick');
class2020.put(11008893, 'Bill');

System.debug(class2020);

class2020.put(11008894, 'Bill');
System.debug(class2020);

//update/override value
class2020.put(11008894, 'Skywalker');
System.debug(class2020);

// get a value
System.debug(class2020.get(11008892));

// remove an item from map
class2020.remove(11008893);
System.debug(class2020);

// get all the keySet
Set<Integer> rollNumber = class2020.keySet();
System.debug(rollNumber);

// get all the values
List<String> students = class2020.values();
System.debug(students);

// check if map has the key
System.debug(class2020.containsKey(11008892));
System.debug(class2020.containsKey(11008893));


//------------------------------Challenge---------------------
// posts for apple category
List<String> applePosts = new List<String>{'Demystifying ios Collections', 'Datatypes and variables in IOS'};
// posts for lightning category
List<String> samsungPosts = new List<String>{'Events in android framework', 'Developing reusable components'};

// map to store the categories and post lists
Map<String, List<String>> allPosts = new Map<String, List<String>>();

// insert apex posts
allPosts.put('Apple', applePosts);
// insert lightning posts
allPosts.put('Samsung', samsungPosts);

//printing all posts along with categories
System.debug(allPosts);


//--------------------------Contants in Apex-------------------------------------
//Once you assign a value to a constant variable, you cannot change that value later on.
// Declare Constant Variable(Final)
final Decimal PI;
System.debug(PI); //prints null

// initialize variable
PI = 3.14159;
System.debug(PI);

// update variable value - NOT ALLOWED
PI = 2.14159;
System.debug(PI);


//-------------------------------Operators----------------------------------------
// assignment operator
Integer x = 5;
System.debug('assignment operator - '+x);

// addition operator
x = x + 5;
System.debug('addition operator - '+x);

// Subtraction operator
x = x - 5;
System.debug('Subtraction operator - '+x);
// multiplication operator
x = x * 5;
System.debug('multiplication operator - '+x);
// division operator
x = x/5;
System.debug('division operator - '+x);

//x = x + 1;
//increment operator
x++;
System.debug('increment operator - '+x);

//decrement operator
x--;// x=x-1;
System.debug('decrement operator - '+x);

// addition assignment operator
//x = x + 5; addition operator
x += 5; // x = x+5;
System.debug('addition assignment operator - '+x);
// subtraction assignment operator
x -= 5; // x = x-5;
System.debug('subtraction assignment operator - '+x);
// multiplication assignment operator
x *= 5; // x = x*5;
System.debug('multiplication assignment operator - '+x);
// division assignment operator
x /= 5; // x = x/5;
System.debug('division assignment operator - '+x);


// using addition operator on strings
String hello = 'Hello';
String world = 'World';

System.debug(hello + world); //HelloWorld
System.debug(hello + ' ' + world); //Hello World


Boolean first = true;
Boolean second = false;
Boolean result;
//AND Operator
result = first && second;// both first and second is true, then final is true, else it is false
System.debug('And Operator - '+result);

//OR Operator
result  = first || second;// both first and second is false, then final is false, else it is true
System.debug('OR Operator - '+result);


// Equality operator
result = (first == second); // if both expressions have the same value, then true, else false
System.debug('Equality Operator Boolean - '+result);
result = (5 == 5);
System.debug('Equality Operator Integer - '+result);
result = ('Hello' == 'World');
System.debug('Equality Operator String - '+result);

// Less than operator
result = (5 < 6);
System.debug('Less than operator - '+result);

// Greater than operator
result = (5 > 6);
System.debug('Greater than operator - '+result);

//less than or equal to operator
result = (5 <= 6);
System.debug('less than or equal to operator - '+result);
result = (6 <= 6);
System.debug('less than or equal to operator 2 - '+result);

//greater than or equal to operator
result = (5 >= 6);
System.debug('greater than or equal to operator - '+result);
result = (6 >= 6);
System.debug('greater than or equal to operator 2 - '+result);



// NOT operator
System.debug('Not operator before - '+ first);
first = !first;
System.debug('Not operator after - '+ first);

// Ternary operator
String greeting = '';
Integer hour = 10;
// if hour is less than 12, then greeting should be good morning
// else greeting should be good afternoon
greeting = (hour < 12) ? 'Good Morning' : 'Good Afternoon';
System.debug('Ternary operator 10 - '+ greeting);
hour = 13;
greeting = (hour < 12) ? 'Good Morning' : 'Good Afternoon';
System.debug('Ternary operator 13 - '+ greeting);

//--------------------------------------Challenge----------------------------
// if hour < 12 = Good morning
// if hour > 12 && hour < 5 = Good Afternoon
// else Good Evening


/*------------------------------------Pizza Rates Challenge-----------------------------
1 slice - $8/slice
2-3 slice - $7/slice
>3 slice - $6/slice

Ross ordered - 3 slices
Chandler ordered - 1 slice
Joey ordered - 4 slices
*/

//Create rate card with constants
final Integer ONLY_ONE_SLICE = 8;
final Integer UPTO_THREE_SLICES = 7;
final Integer MORE_THAN_THREE_SLICES = 6;

Integer numberOfSlices = 0;

// Calculate Ross's amount
numberOfSlices = 3;
Integer rossHasToPay = numberOfSlices == 1 ? ONLY_ONE_SLICE*numberOfSlices :
	(numberOfSlices <= 3 ? UPTO_THREE_SLICES*numberOfSlices :
		MORE_THAN_THREE_SLICES*numberOfSlices);

System.debug('Ross has to pay - '+rossHasToPay);

// Calculate Chandler's amount
numberOfSlices = 1;
Integer chandlerHasToPay = numberOfSlices == 1 ? ONLY_ONE_SLICE*numberOfSlices :
	(numberOfSlices <= 3 ? UPTO_THREE_SLICES*numberOfSlices :
		MORE_THAN_THREE_SLICES*numberOfSlices);

System.debug('Chandler has to pay - '+chandlerHasToPay);

// Calculate Joey's amount
numberOfSlices = 4;
Integer joeyHasToPay = numberOfSlices == 1 ? ONLY_ONE_SLICE*numberOfSlices :
	(numberOfSlices <= 3 ? UPTO_THREE_SLICES*numberOfSlices :
		MORE_THAN_THREE_SLICES*numberOfSlices);

System.debug('Joey has to pay - '+joeyHasToPay);




//-------------------------------------Datatype Conversion--------------------------
// Storing student marks as string values
String physicsMarks = '72';
String chemistryMarks = '64';
String mathMarks = '87';

//Starting with integer 
Integer total =Integer.valueOf(physicsMarks) + Integer.valueOf(chemistryMarks) + Integer.valueOf(mathMarks));

//What if we need to start with String 
String total = String.valueOf(
                    Integer.valueOf(physicsMarks) + Integer.valueOf(chemistryMarks) + Integer.valueOf(mathMarks));

System.debug('Total - '+total);


//--------------------------------If-Else Statement-------------------------
Boolean isItSunny = true;
Boolean isItRaining = false;
Boolean areYouWorking = false;

if(isItSunny == false){
    System.debug('Do not go to party');
} else if (isItRaining == true){
    System.debug('Do not go to party');
} else if ( areYouWorking == true){
    System.debug('Do not go to party');
} else{
    //multi line code block
    System.debug('Yayy!! its party time');
    System.debug('2nd line');
    System.debug('3rd line');






