# Imagem base
FROM node:18

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Define a porta exposta
EXPOSE 3000

# Comando para iniciar o app
CMD ["node", "index.js"]
