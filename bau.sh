#!/bin/bash
# Quick and dirty bash-cgi to filter out relevant info from bauverein search site

echo -ne "Content-type: text/html\n\n<!doctype html><br/>";

ff=`mktemp`
wget -qO- "https://www.bauvereinag.de/kunde-werden/mietimmobilien-suchen#art=3&rooms=0&support=99" | ~/go/bin/pup 'script:nth-of-type(3) text{}' > $ff

echo """
propsJSON.forEach(function(e){
        if(e['el_id'] != '22' && (e['infoContent'].indexOf('Darmstadt') !== -1)){
                console.log(e.infoContent);
        }
        else if(e['el_id'] != '22' && (e['infoContent'].indexOf('Kranichstein') !== -1)){
                console.log(e.infoContent);
        }
        else if(e['el_id'] != '22' && (e['infoContent'].indexOf('Arheilgen') !== -1)){
                console.log(e.infoContent);
        }
        else if(e['el_id'] != '22' && (e['infoContent'].indexOf('Eberstadt') !== -1)){
                console.log(e.infoContent);
        }
});

""" >> $ff

node $ff | sed -e 's|href=\"|href=\"https://www.bauvereinag.de|g'

echo "</html>"
rm $ff
