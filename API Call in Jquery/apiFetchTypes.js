
// By creaing XMLHttpRequest Object
var request = new XMLHttpRequest();
request.open('GET', 'https://jsonplaceholder.typicode.com/todos')
request.send();
request.onload = ()=>{
   console.log(JSON.parse(request.response));
}

//ajax call
// $(document).ready(function(){
//     $.ajax({
//         url: "https://jsonplaceholder.typicode.com/todos",
//         type: "GET",
//         success: function(result){
//             console.log(result);
//         }
//     })
// })

// default fetch() method
// fetch('https://jsonplaceholder.typicode.com/todos').then(response =>{
//     return response.json();
// }).then(data =>{
//     console.log(data);
// })

// axios
// axios.get("https://jsonplaceholder.typicode.com/todos")
// .then(response =>{
//     console.log(response.data);
// })