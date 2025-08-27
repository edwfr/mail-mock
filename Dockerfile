# Usa un'immagine Python leggera come base
FROM python:3.11-slim
# Set working dir
WORKDIR /app
# Copia requirements (se lo hai)
COPY requirements.txt .
# Installa le dipendenze
RUN pip install --no-cache-dir -r requirements.txt
# Copia il codice
COPY . .
# Esponi la porta Flask (5003)
EXPOSE 5003
# Comando di avvio
CMD ["python", "mock_email.py"]