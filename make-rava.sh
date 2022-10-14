if [ -d "../rAVA" ] 
then
    echo "ERRO: Favor executar esse script fora da pasta rAVA/."
else
    echo "Criando micro-rAVA"
    rm -fdr micro-rAVA/
    rm -f micro-rAVA.zip
    mkdir micro-rAVA
    cp rAVA/terminal.py micro-rAVA/main.py
    cp rAVA/micro-readme.txt micro-rAVA/readme.txt
    mkdir micro-rAVA/bot
    cp -r rAVA/bot micro-rAVA/
    rm -f micro-rAVA/bot/*.brn
    mkdir micro-rAVA/livros
    cp -r rAVA/livros micro-rAVA/
    rm -fdr micro-rAVA/*/__pycache__
    zip -r micro-rAVA micro-rAVA
    rm -fdr micro-rAVA/
    echo "micro-rAVA criado com sucesso"

    echo "Criando full-rAVA"
    rm -fdr full-rAVA/
    rm -f full-rAVA.zip
    mkdir full-rAVA
    cp rAVA/*.py full-rAVA/
    cp rAVA/README.md full-rAVA/readme.txt
    mkdir full-rAVA/bot
    cp -r rAVA/bot full-rAVA/
    rm -f full-rAVA/bot/*.brn   
    mkdir full-rAVA/livros
    cp -r rAVA/livros full-rAVA/
    mkdir full-rAVA/website
    cp -r rAVA/website full-rAVA/
    rm -fdr full-rAVA/*/__pycache__
    zip -r full-rAVA full-rAVA
    rm -fdr full-rAVA/
    echo "full-rAVA criado com sucesso"
fi