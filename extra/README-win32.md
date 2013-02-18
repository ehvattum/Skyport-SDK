ENGLISH
-------

### SERVER
To start the server, go into the "server" folder using the cmd and run
"run.bat". Alternatively, you can start the server manually using
"java -jar skyport-server.jar <port> <no. players> <game runtime> <mapfile>".
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


NORSK
---------

### SERVER
For å starte serveren; gå inn i "server"-mappen ved å bruke cmd og kjør
"run.bat". Du kan også starte serveren manuellt ved å bruke
"java -jar skyport-server.jar <port> <antall spillere> <spillets kjøretid>
<kartfiler>". **Porten burde være 54321**.

### GUI
For å starte GUI'et; gå inn i "gui"-mappen og start "skyport2d.exe".
PS: Serveren starter med to åpne porter; en grunnport og grunnport+10.
Grunnport+10 er porten som GUI'et kobler seg til. skyport2d.exe forventer
for øyeblikket at dette skal være port 54331, så gjerne **start serveren på
porten 54321**.

### BOTS
Du kan bruke bottene i "ai" mappen for testing.
Eksempel:
for å kjøre javascript botten; installer nodejs (nodejs.org) og fra cmd,
kjør "node randomwalker.js".
For å kjøre python botten, installer python 2.7 eller 3.3 og fra cmd, kjør
"python simplewalker.py".

### API
Et python og et javascript API er inkludert. Se "api"-mappen.