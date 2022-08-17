$(document).ready(function(){
  $("#hide").click(function(){
    $("#demo").hide();
  });
  $("#show").click(function(){
    $("#demo").show();
  });
  $("#toggle").click(function(){
    $("#demo").toggle();
  });
    $("#fadeIn").click(function(){
      $("#div1").fadeIn();
      $("#div2").fadeIn("slow");
      $("#div3").fadeIn(3000);
    });
    $("#fadeOut").click(function(){
        $("#div1").fadeOut();
        $("#div2").fadeOut("slow");
        $("#div3").fadeOut(3000);
    })
    $("#fadeToggle").click(function(){
        $("#div1").fadeToggle();
        $("#div2").fadeToggle("slow");
        $("#div3").fadeToggle(3000);
      });
      $("#flip").click(function(){
        $("#panel").slideUp("slow");
      });
      $("#flip1").click(function(){
        $("#panel1").slideToggle();
      });
      $("#animate").click(function(){
        $("#anim").animate({
          left: '250px',
          opacity: '0.5',
          height: '150px',
          width: '150px'
        });
      }); 
  });

