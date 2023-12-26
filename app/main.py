from fastapi import FastAPI

app = FastAPI()

# Teste
@app.get("/")
async def home():
    return {"message": "Desenvolvimento de Sistemas Corporativos!"}
