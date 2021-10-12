echo "Digite o nome do pdf (com .pdf):";
read x;
pdftotext ${x} formato.txt;
cat formato.txt | grep root@debian | grep -v '<' > comandos.txt
rm formato.txt;
vim comandos.txt -c %s/$/\; -c ":%s/root@debian:\%d126\%d35 " -c :wq! ;
chmod +x comandos.txt;
echo "finalizado, execute o arquivo 'comandos.txt'"

