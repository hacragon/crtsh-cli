curl -sk "https://crt.sh/?q=olacabs.com" | tee crt.txt
cat crt.txt | grep '<TD>' | grep -vE '<TD>olacabs.com | <TD><A style = '|sed 's/<TD>//g' | sed 's/<\/TD>//g' | tee subdomain-crtsh.txt
sed 's/^ *\*\.*/\n/g; s/^ *//; s/<BR>/\n/g' subdomain-crtsh.txt > crtsh-subdomain.txt 

OR

curl -s "https://crt.sh/?q=airbnb.com" | grep -oP '\b[\w.-]+\.airbnb\.com\b|\bairbnb\.com\.\w+\b' | tee airbnb-crt.txt
