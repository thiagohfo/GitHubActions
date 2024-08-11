# Usar uma imagem base oficial do Python
FROM python:latest

LABEL authors="thiago"

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Atualiza o pip para a versão mais recente
RUN pip install --upgrade pip

# Copiar os arquivos de dependência e instalar as dependências
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar o código fonte para o contêiner
COPY . .

EXPOSE 8000

# Comando para executar a aplicação
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
