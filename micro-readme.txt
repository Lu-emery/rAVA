         ___ _    _____ 
   _____/   | |  / /   |
  / ___/ /| | | / / /| |
 / /  / ___ | |/ / ___ |
/_/  /_/  |_|___/_/  |_|
                        
rAVA é um agente de conversação inteligente, de bases de conhecimento dinâmicas


Esse pacote é um MVP (Produto Mínimo Viável) do sistema rAVA, usado como exemplo para teste e apresentação. 
O sistema foi desenvolvido em Python, e bot usando o pacote python-aiml, na versão 1.0.1 do aiml.

IMPORTANTE: A versão 0.3 do rAVA não é executável em OSX e Linux


## Instalação

    Dependências

    Para executar o código, é necessaria a instalação da versão mais atual do Python (testada em 3.10) e do pacote python-aiml

    Baixar [Python](https://www.python.org/downloads/)

    No prompt de comando, digitar
        pip install python-aiml


## Execução

    Para executar o sistema, acessar a pasta rava/ pelo terminal e executar o comando

    Windows
    ```
    python main.py
    ```

    Então, você pode conversar com o bot usando o terminal. Por limitações dos sistemas usados, todos os nomes de
    livros e autores foram escritos sem acento.

    Os livros presentes na base de conhecimento são:
        Dom Quixote, Dracula, Admiravel Mundo Novo, 1984, Metamorfose, Memorias Postumas de Bras Cubas, Dom Casmurro
        Quincas Borba, Kizumonogatari, Lolita, A Arte da Guerra

    Em função dos testes sendo realizados, um arquivo "logs.txt" é gerado para cada vez que o usuário interage com
    o bot. Após fazer os testes, favor enviar os arquivos "logs" e as opiniões para um dos desenvolvedores pelo email
    abaixo ou outro meio de sua preferência.


## Exemplo de Uso

    Segue o log de uma conversa de exemplo:
        >>> oi
        OI, MEU NOME É RAVA, QUAL O SEU?

        >>> lucas
        MUITO PRAZER, LUCAS, COM O QUE EU POSSO AJUDAR?

        >>> quero comprar um livro
        PERFEITO! EM QUAL LIVRO TEM INTERESSE?

        >>> dracula de bram stoker
        DRACULA DE BRAM STOKER? TEMOS SIM

        >>> quanto custa?
        CUSTA R$ 20

        >>> pode ser
        PERFEITO, CHEGAMOS AO FIM DA COMPRA, FICOU R$ 20

        >>> sair
        FOI ÓTIMO CONVERSAR COM VOCÊ


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