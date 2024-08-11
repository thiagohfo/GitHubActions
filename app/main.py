from fastapi import FastAPI

app = FastAPI()

# Teste
@app.get("/")
async def home():
    return {"message": "Processo de Software!"} # Teste de Secret
