# Usamos flask para a funcionalidade do site
from flask import Flask
from os import path

def criar_app():
    # Criamos o app e definimos as configurações iniciais
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'Youre someone elses problem, now I only want you gone'
    
    # Registramos as blueprints do site
    from .views import views
    app.register_blueprint(views, url_prefix='/')
    
    return app
