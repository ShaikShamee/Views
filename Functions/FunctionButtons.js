   //New Function
let str = "receive the code from a server dynamically";

let func1 = new Function(str);
function New()
{
document.getElementById("demo").innerHTML=func1();
}
//clourses
function getFunc() {
    let value = "test";
  
    let func = function() { alert(value); };
  
    return func;
  }
  
  function Clourse()
  {
 document.getElementById("demo1").innerHTML= getFunc()();
  }
  //spread Operator
// let arr = [1,2,3];
// let arr2 = [4,5];
  
// arr = [...arr,...arr2];
// document.write(arr);

function sum(x, y, z) {
   return x + y + z;
 }
 
 const numbers = [1, 2, 3];
 
 function spread()
{
document.getElementById("demo2").innerHTML=sum(...numbers);
}

 //document.write(sum(...numbers));
//Rest Operator
function sum(...args){
    let total = 0;
    for(let number of args){
       total += number;
    }
    return total;
 }
 //console.log(sum(1, 2)); //will give 3
 //console.log(sum(1, 2, 3)); //will give 6
  //document.write(sum(1, 2)); 
// document.write(sum(1, 2, 3));
 function rest()
 {
 document.getElementById("demo3").innerHTML=sum(1, 2);
 }
 //arrow function

 let sum = (a, b) => {  // the curly brace opens a multiline function
   let result = a + b;
   return result; // if we use curly braces, then we need an explicit "return"
 };
 function arrow()
 {
 document.getElementById("demo4").innerHTML=sum(1, 2);
 }

 //document.write(sum(1, 2));
 //Recursive Function

 function countDown(fromNumber) {
   //console.log(fromNumber);
   document.write(fromNumber);

   let nextNumber = fromNumber - 1;

   if (nextNumber > 0) {
       countDown(nextNumber);
   }
}
function Recursive()
 {
 document.getElementById("demo5").innerHTML=countDown(3);
 }

