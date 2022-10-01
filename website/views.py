from flask import Blueprint, render_template, request, flash, session
from bot import run_bot_with_logs, reset_bot
import sys
sys.path.append("..")

views = Blueprint('views', __name__)

@views.route('/', methods=['GET', 'POST'])
def home():
    logs = []
    if request.method == "POST":
        if request.form.get('entrada_usuario') == "":
            flash("O campo de entrada está vazio. Favor inserir uma mensagem.", category="ERROR")
            
        if request.form.get('entrada_usuario').upper() == "RESET":
            reset_bot()
            if 'logs' in session:
                session.pop('logs', None)

        else:
            if 'logs' in session:
                logs = session['logs']

            pergunta = ["usr", request.form.get('entrada_usuario')]
            logs.append(pergunta)

            resposta = geraResposta(logs)
            logs.append(resposta)

            session['logs'] = logs
            print_logs(logs)
            
            return render_template("rava.html", messages=logs_p_tela(logs))
        
    if 'logs' in session:
        logs = session['logs']
    return render_template("rava.html", messages=logs_p_tela(logs))

def geraResposta(logs):
    usr_logs = []
    
    for msg in logs:
        if msg[0] == 'usr':
            usr_logs.append(msg)
    
    resp = ['bot', run_bot_with_logs(usr_logs)]
    return resp

def print_logs(logs):
    print("")
    print("CURRENT MSG LOG:")
    for msg in logs:
        print(str(msg))
    print("")
    
def logs_p_tela(logs):
    msgs = logs[:]
    msgs.reverse()
    return msgs