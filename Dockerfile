FROM node:latest

# diretório criado no container
WORKDIR /usr/src/

# copia todos os arquivos para o container
COPY . . 

EXPOSE 5000

RUN npm i && npx prisma generate

#só executa quando rodarmos a imagem
CMD ["npm", "run", "dev"]