if [ -d "../rAVA" ] 
then
    echo "ERRO: Favor executar esse script fora da pasta rAVA/."
else
    rm -fdr micro-rAVA/
    rm -f micro-rAVA.zip
    mkdir micro-rAVA
    cp rAVA/terminal.py micro-rAVA/
    mkdir micro-rAVA/bot
    cp -r rAVA/bot micro-rAVA/
    mkdir micro-rAVA/livros
    cp -r rAVA/livros micro-rAVA/livros
    zip -r micro-rAVA micro-rAVA
    rm -fdr micro-rAVA/

    rm -fdr full-rAVA/
    rm -f full-rAVA.zip
    mkdir full-rAVA
    cp rAVA/*.py full-rAVA/
    mkdir full-rAVA/bot
    cp -r rAVA/bot full-rAVA/
    mkdir full-rAVA/livros
    cp -r rAVA/livros full-rAVA/
    mkdir full-rAVA/website
    cp -r rAVA/website full-rAVA/
    zip -r full-rAVA full-rAVA
    rm -fdr full-rAVA/
fi