#!/bin/bash
# Quick and dirty bash-cgi to filter out relevant info from bauverein search site

echo -ne "Content-type: text/html; charset=UTF-8\n\n<!doctype html><br/>";

ff=`mktemp`
wget -qO- "https://www.bauvereinag.de/kunde-werden/mietimmobilien-suchen#art=3&rooms=0&support=99"| ~/go/bin/pup --charset 'utf-8' 'script:nth-of-type(3) text{}' > $ff

# exclude id 22 which is car slots for rent
#
echo """
propsJSON.forEach(function(e){

if(e['el_id'] != '22'){
  console.log(e.infoContent);
}

/*      if(e['el_id'] != '22' && (e['infoContent'].indexOf('Darmstadt') !== -1)){
                console.log(e.infoContent);
        }
        if(e['el_id'] != '22' && (e['infoContent'].indexOf('Kranichstein') !== -1)){
                console.log(e.infoContent);
        }
        if(e['el_id'] != '22' && (e['infoContent'].indexOf('Arheilgen') !== -1)){
                console.log(e.infoContent);
        }
        if(e['el_id'] != '22' && (e['infoContent'].indexOf('Eberstadt') !== -1)){
                console.log(e.infoContent);
        }
*/
});

""" >> $ff

node $ff | sed -e 's|href=\"|href=\"https://www.bauvereinag.de|g'

echo "</html>"
rm $ff
