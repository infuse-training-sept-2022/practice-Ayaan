setInterval(function() {
    let date = new Date();
    let time = date.toLocaleTimeString();
    $("#time").text(time);
  }, 1000);

 
  