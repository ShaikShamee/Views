//async and setTimeout function
async function fn() {
  let promise = new Promise((resolve, reject) => {
    setTimeout(() => resolve("Done!"), 1000)
  });
  let res = await promise; // wait until the promise resolves (*)
  document.write(res); // result:  "Done!"
}
fn();

//anonymous function
var test = function (platform) {
  console.log("This is an anonymous ", platform);
};

test("function!");

//copyWithinMethod
var strarr= ["seema","teja","shanu","dhanu"];   
strarr.copyWithin(1);  
//Placing from index position 2  
//The element from index 0  
  document.write(strarr+"<br/>");  

  //entries
  var iterator = strarr.entries();  
  document.write(iterator.next().value+"<br/>");  
  
  //filter method
 function Filtervalues(value)  
{ 
  return value>=5;  
}  
     // Input array  
  var arr= [1,2,3,4,5,6,7,8,9,10];   
  var result=arr.filter(Filtervalues);   
 document.write(result+"<br/>");
 


//every
var states = ["AP","UP","HP","MP"];  
function GetState(n)  
{  
return n !='UP';  
}  
document.write(states.every(GetState));

// //Fill method
// var cities=['hyd','mumbai','delhi','bangalore'];
// cities.fill('h');
// document.write(cities+"<br>");

// var nums=[1,2,3,4,5,56,6];
// document.write(nums.fill(10)+"<br>");




//find method
function Findvalues(value)  
{  
return value ==15;  
}  
var values = [6,5,4,3,2,8,9,12,11,14];  
var result = array.find(values);  
document.write(result+"<br>")   

//findindex

const ages = [3, 10, 18, 20];

ages.findIndex(checkAge);

function checkAge(age) {
  return age > 18;
}

 //foreach
 const fruits = ["apple", "orange", "cherry"];
 fruits.forEach(myFunction);
 //slice
 const fruitnames = ["Banana", "Orange", "Lemon", "Apple", "Mango"];
 const citrus = fruits.slice(1, 3);
 
 //Map
 const numbers = [65, 44, 12, 4];
 const newArr = numbers.map(myFunction)
 
 function myFunction(num) {
   return num * 10;
 }
 //set
// Create a Set
const letters = new Set();

// Create Variables
const a = "a";
const b = "b";
const c = "c";

// Add the Variables to the Set
letters.add(a);
letters.add(b);
letters.add(c);

// Display set.size
document.getElementById("demo").innerHTML = letters.size;
 //lastIndexof
 let text = "Hello planet earth, you are a great planet.";
 let result1 = text.lastIndexOf("Planet");
 

