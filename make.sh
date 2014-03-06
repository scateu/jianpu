LY_NAME=$(echo $1\.ly)
PDF_NAME=$(echo $1\.pdf)
python jianpu-ly.py < $1 > $LY_NAME
lilypond $LY_NAME
evince $PDF_NAME
