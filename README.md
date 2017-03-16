# wohnungssuche-darmstadt-tools
Eine Sammlung von Tricks zum schnellen Auffinden von Wohnungen in Darmstadt und Umgebung.

# Bauverein
Die Website vom Bauverein lässt sich nur mit mehr Aufwand überwachen. Eine Lösung bieter das Bash-CGI Script `bau.sh`.

Benötigt wird `node-js`, `pup`(https://github.com/ericchiang/pup) und wget

Ist das bash-cgi am laufen benötigt ihr noch einen guten "URL-Überwacher". Ich lege euch https://github.com/thp/urlwatch ans Herz.

Manche Angebote sind nur eine Stunde(**!**) online sodass sich schnell sein lohnt (cronjob alle 15 Minuten erwies sich als ausreichend).


# Echo-Online
Hier gibt es Suchagenten, allerdings sind die Detailinformationen (Kontaktinfos) zu manche in den Suchergebnissen noch zu sehenden Anzeigen nicht mehr erreichbar. Abhilfe schafft hierbei das Kopieren der Angebots-ID (z.B. 75TK5G) und anschließendes Einfügen in die Druck-URL: http://immobilien.echo-online.de/drucken/75TK5G

:)
