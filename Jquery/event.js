$(document).ready(function(){
    $("p").click(function(){
      $(this).hide();
    });
    $("p").dblclick(function(){
        $(this).toggle();
      });
      $("#p1").mouseenter(function(){
        alert("You entered p1!");
      });
      $("#p1").mouseleave(function(){
        alert("Bye! You now leave p1!");
      });
      $("#p1").mousedown(function(){
        alert("Mouse down over p1!");
      });
      $("#p1").mouseup(function(){
        alert("Mouse up over p1!");
      });
      $("#p1").hover(function(){
        alert("You entered p1!");
      },
      function(){
        alert("Bye! You now leave p1!");
      });
      $("input").focus(function(){
        $(this).css("background-color", "#cccccc");
      });
      $("input").blur(function(){
        $(this).css("background-color", "#ffffff");
      });
    });