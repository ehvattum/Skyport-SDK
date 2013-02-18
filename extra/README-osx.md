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
terminal, run "node randomwalker.js".


### API
Currently there exists a python and javascript (nodejs) API. See
the "api" folder.


NORSK
---------

### SERVER
For å starte serveren; gå inn i "server"-mappen ved å bruke terminalen og
kjør "run.sh". Du kan også starte serveren manuellt ved å bruke
"java -jar skyport-server.jar <port> <antall spillere> <spillets kjøretid>
<kartfiler>". **Porten burde være 54321**.

### GUI
For å starte GUI'et; installer love fra love2d.org. Gå så inn i "gui"-mappen
og start "skyport2d.love" (dobbeltklikk).
PS: Serveren starter med to åpne porter; en grunnport og grunnport+10.
Grunnport+10 er porten som GUI'et kobler seg til. skyport2d.exe forventer
for øyeblikket at dette skal være port 54331, så gjerne **start serveren på
porten 54321**.

### BOTS
Du kan bruke bottene i "ai" mappen for testing.
Eksempel:
for å kjøre javascript botten; installer nodejs (nodejs.org) og fra
terminalen, kjør "node randomwalker.js".
For å kjøre python botten, kjør "python simplewalker.py" fra terminalen.

### API
Et python og et javascript API er inkludert. Se "api"-mappen.