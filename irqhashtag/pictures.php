<HTML>
<HEAD>
</HEAD>
<BODY>
<?php print `ls -lt images/*.jpg | head -30 |  awk '{print "<img src=\""$9"\">"}'` ?>
</BODY>
</HTML>