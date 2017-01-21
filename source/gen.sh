#!/bin/sh
# usage: type './gen.sh featuredterm'

procpath=xsltproc

# 1. get XML and TXT lists of all the terms

cd terms
grep -h "<term" *.xml > ../tmp.term
ls *.xml > ../tmp.txt
sed 's/.xml//' ../tmp.txt > ../tmp.list
cd ../
sed -f sedterm tmp.term > termlist.xml
rm tmp.txt
rm tmp.term

# 2. generate ism.ent

xsltproc xslt/list2ent.xsl termlist.xml > tmp.ent
sed -f sedent tmp.ent > ism.ent
rm tmp.ent

# 3. generate HTML for the list of terms

xsltproc xslt/list2list.xsl termlist.xml > ../ismlist.html
rm termlist.xml

# 4. generate HTML for all the terms

while read f
do
    $procpath xslt/maketerm.xsl terms/$f.xml > ../$f.html
done < tmp.list
rm tmp.list

# 5. generate index.html, showing the featured term

$procpath xslt/makeindex.xsl terms/$1.xml > ../index.html

# END
