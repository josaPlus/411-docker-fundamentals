FROM node:alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

# se utiliza cuando quieres ejecutar un comando mientras se construye la imagen
RUN npm install
COPY index.js ./
EXPOSE 3000

# se utiliza para ejecutar un comando cuando se inicia el contenedor
CMD [ "node", "index.js" ]