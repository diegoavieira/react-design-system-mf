FROM node:22.16.0

# Instala dependências em cache para acelerar builds
WORKDIR /cache
COPY package*.json ./
RUN npm ci

# Define diretório de trabalho da aplicação
WORKDIR /app

# Copia o entrypoint antes do restante para garantir permissão
COPY entrypoint.sh /app/entrypoint.sh

# Garante permissão de execução
RUN chmod +x /app/entrypoint.sh

# Copia o restante dos arquivos do projeto
COPY . .

# Define o entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]