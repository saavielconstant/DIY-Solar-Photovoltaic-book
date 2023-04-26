#!/bin/sh 
rapportDir=`pwd` # On enregistre le repertoire courant comme rapportDir
# On supprime l'ancien dossier de compilation puis on recrée
rm -R compile_dir
rm -R convert_dir
mkdir compile_dir

# On copie les fichiers necessaires à la compilation dans le dossier de compilation
cp *.tex compile_dir
cp *.bib compile_dir
cp *.sty compile_dir


#On copie aussi les répertoires contenant les images, les annexes et les autres dossiers nécessaires à la compilation 
cp -R images compile_dir
cp -R tableaux compile_dir
cp -R bibliographie compile_dir
cp -R annexes compile_dir
cp -R lien_tableaux compile_dir
cp -R lien_images compile_dir
cp -R lien_bibliographie compile_dir
cp -R lien_annexes compile_dir
cp -R chapitre0 compile_dir
cp -R chapitre1 compile_dir
cp -R chapitre2 compile_dir
cp -R chapitre3 compile_dir
cp -R chapitre4 compile_dir
cp -R chapitre5 compile_dir
cp -R chapitre6 compile_dir

#On en profite également pour faire un peu de nettoyage 
rm mots *.txt
rm *.docx *.rtf *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd chapitre0
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
cd chapitre1
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
cd chapitre2
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
cd chapitre3
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
cd chapitre4
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
cd chapitre5
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
cd chapitre6
rm *.docx *.odt *.4tc *.aux *.bcf *.idx *.ilg *.ind *.xdv *.xref *.tmp
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.bcf *.idx *.xml
cd "$rapportDir"
# On entre dans le dossier de compilation
cd compile_dir 

#On supprime tout les appels au en-tete et les début de documents, sauf pour le fichier index
mv index_main.tex index_main.texB
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
mv index_main.texB index_main.tex

#On fait de même dans les sous dossiers chapitres
cd chapitre0
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..

cd chapitre1
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..

cd chapitre2
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..

cd chapitre3
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..
cd chapitre4
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..
cd chapitre5
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..
cd chapitre6
grep -rl "lien_header" *.tex | xargs sed -i 's/\\input{lien_header}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\begin{document}//g'
grep -rl "document" *.tex | xargs sed -i 's/\\end{document}//g'
cd ..

# On procède à la compilation proprement dit
# Pass 1
echo "####################################################################################"
echo "####################################################################################"
echo "#############################			##################################"
echo "#############################	   PASS 1       ##################################"
echo "#############################			##################################"
echo "####################################################################################"
echo "####################################################################################"
sleep 1s
biber index_main
xelatex index_main.tex
#makeindex Rapport-M2-EER-Saaviel-SOMDA.nlo -s nomencl.ist -o Rapport-M2-EER-Saaviel-SOMDA.nls

# Pass 2
echo "####################################################################################"
echo "####################################################################################"
echo "#############################			##################################"
echo "#############################	   PASS 2       ##################################"
echo "#############################			##################################"
echo "####################################################################################"
echo "####################################################################################"
sleep 1s
biber index_main
xelatex index_main.tex
#makeindex Rapport-M2-EER-Saaviel-SOMDA.nlo -s nomencl.ist -o Rapport-M2-EER-Saaviel-SOMDA.nls

# Pass 3
echo "####################################################################################"
echo "####################################################################################"
echo "#############################			##################################"
echo "#############################	   PASS 3       ##################################"
echo "#############################			##################################"
echo "####################################################################################"
echo "####################################################################################"
sleep 1s
biber index_main
xelatex index_main.tex
#makeindex Rapport-M2-EER-Saaviel-SOMDA.nlo -s nomencl.ist -o Rapport-M2-EER-Saaviel-SOMDA.nls

#On converti en html et en odt avec tex4ht
#make4ht --output-dir convert_dir --format odt --shell-escape --utf8 --xetex  index_main.tex
pandoc --standalone --from=latex --to=docx --table-of-contents --reference-links --biblatex --bibliography=bibliographie.bib --output=pandoc_index_main.docx index_main.tex
latex2rtf  -t1 -M3 -o latex2rtf_index_main.rtf index_main.tex
 
#On place le rapport compilé dans le répertoire de base
mv index_main.pdf "$rapportDir/index_main.pdf"
mv latex2rtf_index_main.rtf "$rapportDir/latex2rtf_index_main.rtf"
mv pandoc_index_main.docx "$rapportDir/pandoc_index_main.docx"
cp -R convert_dir  "$rapportDir/"
cd "$rapportDir"
libreoffice --convert-to odt latex2rtf_index_main.rtf
libreoffice --convert-to odt pandoc_index_main.docx
libreoffice --convert-to txt latex2rtf_index_main.odt
#pdftotext -layout index_main.pdf index_main.txt
wc --words latex2rtf_index_main.txt  > mots

echo "####################################################################################"
echo "####################################################################################"
echo "#############################			##################################"
echo "############################# COMPILATION TERMINE	##################################"
echo "#############################			##################################"
echo "####################################################################################"
echo "####################################################################################"
gedit mots


