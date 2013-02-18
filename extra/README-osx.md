ENGLISH
-------

### SERVER
To start the server, go into the "server" folder using the terminal and run
"run.sh" Alternatively, you can start the server manually using
"java -jar skyport-server.jar <port> <no. players> <game runtime> <mapfile>"
The port should be 54321.

### GUI
To run the GUI, you need to install love from love2d.org.
Then go to the "gui" folder and double-click "skyport2d.love".

NOTE: The server opens two ports, baseport and baseport+10. Baseport+10
is the port the GUI connects to. skyport2d.exe currently expects this
to be port 54331, so start the server on port 54321.

### BOTS
You can use the bots in the ai/ folder for testing.

Example:
To run the python bot, run "python simplewalker.py".
to run the javascript bot, install nodejs (nodejs.org) and from the
cmd, run "node randomwalker.js".


### API
Currently there exists a python and javascript (nodejs) API. See
the "api" folder.


NORWEGIAN
---------

