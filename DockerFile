# Use uma imagem base do Python
FROM python:3.10

# Define o diretório de trabalho
WORKDIR /app

# Copie o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instale as dependências necessárias
RUN pip install -r requirements.txt

# Copie o código da sua API para o diretório de trabalho
COPY . .

# Exponha a porta 5002
EXPOSE 5002

# Comando para rodar a aplicação
CMD ["python", "app.py"]
