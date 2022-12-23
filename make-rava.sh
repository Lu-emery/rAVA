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

    echo "Criando macro-rAVA"
    rm -fdr macro-rAVA/
    rm -f macro-rAVA.zip
    mkdir macro-rAVA
    cp rAVA/*.py macro-rAVA/
    cp rAVA/README.md macro-rAVA/readme.txt
    mkdir macro-rAVA/bot
    cp -r rAVA/bot macro-rAVA/
    rm -f macro-rAVA/bot/*.brn   
    mkdir macro-rAVA/livros
    cp -r rAVA/livros macro-rAVA/
    mkdir macro-rAVA/website
    cp -r rAVA/website macro-rAVA/
    rm -fdr macro-rAVA/*/__pycache__
    zip -r macro-rAVA macro-rAVA
    rm -fdr macro-rAVA/
    echo "macro-rAVA criado com sucesso"
fi