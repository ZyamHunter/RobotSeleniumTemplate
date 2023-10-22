import os
from dotenv import load_dotenv


def get_enviroment_variables():
    load_dotenv()

    environment_variables = {
        'USER_MARK_ADMIN': os.getenv('USER_MARK_ADMIN'),
        'PASS_MARK_ADMIN': os.getenv('PASS_MARK_ADMIN'),
        'USER_COORDINATOR': os.getenv('USER_COORDINATOR'),
        'PASS_COORDINATOR': os.getenv('PASS_COORDINATOR'),
        'USER_TEACHER': os.getenv('USER_TEACHER'),
        'PASS_TEACHER': os.getenv('PASS_TEACHER'),
        'USER_STUDENT': os.getenv('USER_STUDENT'),
        'PASS_STUDENT': os.getenv('PASS_STUDENT'),
        'SLACK_WEBHOOK': os.getenv('SLACK_WEBHOOK'),
        'BASE_API': os.getenv('BASE_API'),
        'BASE_URL': os.getenv('BASE_URL'),
        'BASE_HOME_URL_COORDINATOR': os.getenv('BASE_HOME_URL_COORDINATOR')
    }

    return environment_variables