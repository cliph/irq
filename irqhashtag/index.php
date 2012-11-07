<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<title>#IRQ</title>
<link rel="stylesheet" href="irq.css" type="text/css" title="Standard" />
</head>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script> 
<script> 
// var auto_refresh = setInterval(
// function()
// {
// $('#loaddiv').fadeOut('slow').load("pictures.html?"+(+new Date())).fadeIn("slow");
// $('#loaddiv').load("pictures.html?"+(+new Date()));
// }, 10000);

$(document).ready(function () {
    var interval = 500;   //number of mili seconds between each call
    var refresh = function() {
        $.ajax({
            url: "pictures.html",
            cache: false,
            success: function(html) {
                $('#loaddiv').html(html);
                setTimeout(function() {
                    refresh();
                }, interval);
            }
        });
    };
    refresh();
});
</script>

<div id="loaddiv"> 

</div>
</body>
</html>
