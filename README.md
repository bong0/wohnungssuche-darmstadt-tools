# wohnungssuche-darmstadt-tools
Eine Sammlung von Tricks zum schnellen Auffinden von Wohnungen in Darmstadt und Umgebung.

# Bauverein
Die Website vom Bauverein lässt sich nur mit mehr Aufwand überwachen. Eine Lösung bieter das Bash-CGI Script `bau.sh`.

Benötigt wird `node-js`, `pup`(https://github.com/ericchiang/pup) und wget

Ist das bash-cgi am laufen benötigt ihr noch einen guten "URL-Überwacher". Ich lege euch https://github.com/thp/urlwatch ans Herz.

Manche Angebote sind nur eine Stunde(**!**) online sodass sich schnell sein lohnt (cronjob alle 15 Minuten erwies sich als ausreichend).


# Echo-Online
Hier gibt es Suchagenten, allerdings sind die Detailinformationen (Kontaktinfos) zu manche in den Suchergebnissen noch zu sehenden Anzeigen nicht mehr erreichbar. Abhilfe schafft hierbei das Kopieren der Angebots-ID (z.B. *75TK5G*) und anschließendes Einfügen in die Druck-URL: http://immobilien.echo-online.de/drucken/75TK5G

Wenn keine Telefonnummer dabei steht, kann man sich unter `chiffrepost@vrm.com` melden um Kontakt mit der Person zu bekommen die die Anzeige geschaltet hat.

Die Suchergebnisse lassen sich auch als RSS-Feed ausgeben (z.B. http://immobilien.echo-online.de/suchergebnisse?l=darmstadt&r=0km&t=all%3Arental&pf=&pt=&rf=0&rt=0&sf=&st=). Hierzu empfehle ich dann blogtrottr zu benutzen

# RSS-Suchagenten

Falls ihr irgendwo suchen als RSS bekommt, werft sie einem Dienst wie https://blogtrottr.com/ vor. Der Schickt euch bei änderung stündlich ein E-Mail update.



Ich wünsche euch viel Glück bei der Suche (anders kommt man gefühlt auch nicht an Wohnungen, Engagemet ist nur ein Teil des Suchprozesses leider :/)

