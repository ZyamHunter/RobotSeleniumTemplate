# Projeto de automação Robot e Selenium
Projeto criado para rodar testes automatizados de aceitação (e2e) no front-end e no back-end, utilizando as tecnologias do Robot Framework e do Selenium. Os testes devem ser capazes de serem rodados localmente e na pipeline


# robot e selenium template
> Repositório de testes dedicados ao uso das mais variadas bibliotecas do robot framework, especificamente a rpaframework

# Configuração do Ambiente

## 1. Instalar Python 3.10

Certifique-se de ter o Python 3.10 instalado em seu sistema. Você pode baixá-lo no [site oficial do Python](https://www.python.org/).

## 2. Instalar Ambiente Virtual

Instale a ferramenta `virtualenv` para criar ambientes virtuais de aprendizado:

- pip install virtualenv

## 3. Criar um ambiente virtual:
- python -m venv project-venv

## 4. Se você estiver usando o PowerShell e encontrar problemas para executar scripts, talvez precise alterar a política de execução temporariamente para permitir a execução de scripts:
- Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

## 5. Ativar o ambiente virtual:
- .\project-venv\Scripts\activate

## 6. Remover cache do pip
- pip cache remove *

## 7. Rodar os testes
- robot -d logs ./src

## 8. Desativar ambiente virtual
- deactivate

## 9. Instalar Node.js:
- https://nodejs.org/en/download
 > Ao instalar, provavelmente vários pacotes adicionais serão instalados, como chocolatery, etc.

<br/>

### ---- Diferenciais no projeto ----
<br/>

- Page Object
- Robot Framework
- Selenium
- Massa de Dados
- Geração de Report
- Report dos testes no Slack

<br/>
