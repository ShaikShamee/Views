$(document).ready(function(){
$('#btn').click(function()
{
  let value=document.getElementById('num1').value;
  let value1=1709841.33;
  let value2=value*value1;  
  document.getElementById('para1').innerHTML=value2 +"BitCoins";
})
});