<HTML>
<HEAD>
</HEAD>
<BODY>
<?php print `ls -lt images/*.jpg 2> /dev/null | head -10 |  awk '{print "<img src=\""$9"\">"}'` ?>
</BODY>
</HTML>
