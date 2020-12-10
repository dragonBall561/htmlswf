:: Do some Variable Stuff and Make Some Directories
set savedir=%tmp%\htmlswf
md %savedir% &:: Making the dir with all the html
set savefile=%savedir%\"%~n1.html" &:: This will be the html file that we will embed the swf in

set html="<style>body{margin:0;height:100%%}</style><embed src="%~dpnx1"width="100%%"height="100%%">" &:: Some html code
echo|set /p=%html% > %savefile% &:: Write to the html file
start %savefile% &:: Start it
