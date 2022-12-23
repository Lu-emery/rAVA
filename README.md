# rAVA
> rAVA é um agente de conversação inteligente, de bases de conhecimento dinâmicas


Esse pacote é um MVP (Produto Mínimo Viável) do sistema rAVA, usado como exemplo para teste e apresentação. O sistema foi desenvolvido em Python, usando Flask para a interface web e o add-on Jinja para criar html dinâmico. O bot foi desenvolvido usando o pacote python-aiml, na versão 1.0.1 do aiml.

IMPORTANTE: A versão 0.3 do rAVA não é executável em OSX e Linux


## Instalação

Dependências

Para executar o código, é necessaria a instalação da versão mais atual do Python (testada em 3.10), do Flask e do pacote python-aiml

OS X & Linux
```
sudo apt-get install python3
pip install flask
pip install python-aiml
```

Windows

Baixar [Python](https://www.python.org/downloads/)
```
pip install flask
pip install python-aiml
```

## Execução

Para executar o sistema, acessar a pasta rava/ pelo terminal e executar o comando

OS X & Linux
```
python3 website.py
```

Windows
```
python website.py
```

Acessar o site a partir de http://127.0.0.1:5000

IMPORTANTE: Existe a possibilidade do browser automaticamente tentar mudar de http para https, caso isso aconteça, o site não funcionará. Ele deve ser acessado usando http.

Caso queira fazer o teste pelo terminal, e não um website, basta trocar o arquivo executado para 'terminal.py'

## Exemplo de uso

![](imagens/Fluxo%20Botto.png)

Para resetar a conversa com o bot, basta fechar o browser ou enviar o comando "reset"

## Histórico de lançamentos

* 0.1
    * MVP do sistema rAVA
* 0.1.1
    * Mudança no nome do bot
* 0.2
    * Divisão entre micro e full-rAVA
* 0.3
    * Criação de logs

## Meta

Lucas Mendonça Emery Cade – lucas.cade@edu.ufes.br

Esse sistema foi desenvolvido para fins educacionais. Favor não copiar ou utilizar para fins comerciais sem permissão.