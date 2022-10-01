import aiml
import os

kernel = aiml.Kernel()

def reset_bot():
    kernel.bootstrap(learnFiles = "bot/std-startup.xml", commands = "INICIAR TESTE")
    kernel.saveBrain("bot/cerebro.brn")

if os.path.isfile("bot/cerebro.brn"):
    kernel.bootstrap(brainFile = "bot/cerebro.brn")
else:
    reset_bot()

#kernel.bootstrap(learnFiles = "bot/std-startup.xml", commands = "INICIAR TESTE")
#kernel.saveBrain("bot/cerebro.brn")
    
session_id = 1

session_data = kernel.getSessionData(session_id)

kernel.setBotPredicate("name", "Botto")

def pre_processamento(msg):
    # Essa função vai executar qualquer pré-processamento relevante para a mensagem
    return msg

def dispatcher(msg):
    # Essa função vai classificar a mensagem e retornar qual é o tipo de processamento alvo
    
    # Por enquanto só usamos o aiml
    if msg:
        tgt = 'aiml'
    
    return tgt

def run_bot_with_logs(logs):
    #print("RODANDO BOT COM LOGS: "+str(logs))
    for i, msg in enumerate(logs):
        
        entrada_usuario = pre_processamento(msg[1])
        
        tgt = dispatcher(entrada_usuario)

        if tgt == 'aiml':
            resp = kernel.respond(entrada_usuario, session_id)
        elif tgt == 'arit':
            # resp = aritmetica(entrada_usuario)
            pass
        elif tgt == 'logic':
            # resp = logica(entrada_usuario)
            pass
    
        if (i+1) == len(logs):
            return resp