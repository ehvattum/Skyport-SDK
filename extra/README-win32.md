ENGLISH
-------

### SERVER
To start the server, go into the "server" folder using the cmd and run
"run.bat". Alternatively, you can start the server manually using
"java -jar skyport-server.jar <port> <no. players> <game runtime> <mapfile>"
The port should be 54321.

### GUI
To start the GUI, go into "gui" and start "skyport2d.exe".
NOTE: The server opens two ports, baseport and baseport+10. Baseport+10
is the port the GUI connects to. skyport2d.exe currently expects this
to be port 54331, so start the server on port 54321.

### BOTS
You can use the bots in the ai/ folder for testing.
Example:
To run the javascript bot, install nodejs (nodejs.org) and from the
cmd, run "node randomwalker.js".
To run the python bot, install python 2.7 or 3.3 and from the cmd, run
"python simplewalker.py".

### API
Currently there exists a python and javascript (nodejs) API. See
the "api" folder.


NORWEGIAN
---------

