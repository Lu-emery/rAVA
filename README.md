# rAVA
> rAVA é um site de interação com um agente de conversação inteligente


Esse pacote é um MVP (Produto Mínimo Viável) do sistema rAVA, usado como exemplo para teste e apresentação. O sistema foi desenvolvido em Python, usando Flask para a interface web e o add-on Jinja para criar html dinâmico. O bot foi desenvolvido usando o pacote python-aiml, na versão 1.0.1 do aiml.


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
python3 main.py
```

Windows
```
python main.py
```

Acessar o site a partir de http://127.0.0.1:5000

IMPORTANTE: Existe a possibilidade do browser automaticamente tentar mudar de http para https, caso isso aconteça, o site não funcionará. Ele deve ser acessado usando http.

## Exemplo de uso

![](imagens/Fluxo%20Botto.png)

Para resetar a conversa com o bot, basta fechar o browser ou enviar o comando "reset"

## Histórico de lançamentos

* 0.1
    * MVP do sistema rAVA
* 0.1.1
    * Mudança no nome do bot

## Meta

Lucas Mendonça Emery Cade – lucas.cade@edu.ufes.br

Esse sistema foi desenvolvido para fins educacionais. Favor não copiar ou utilizar para fins comerciais sem permissão.