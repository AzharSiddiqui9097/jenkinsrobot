import os
import base64
from configparser import ConfigParser

dir_path = os.path.dirname(os.path.realpath(__file__))
config_file = os.path.join(dir_path,'config.ini')

config = ConfigParser()
config.read(config_file)
username = config.get('LoginDetails','Username')
Password_encoded= config.get('LoginDetails','Password')
password = base64.b64decode(Password_encoded).decode('utf-8')

