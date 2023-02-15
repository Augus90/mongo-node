# Tomo la imagen de node 14 
FROM node:14 
# Crep un dorectorio para la aplicacion y con -p lo si no existe lo creo
RUN mkdir -p /usr/src/app
# cambio el directorio de la aplicacion
WORKDIR /usr/src/app
# copio la conf de node y el asterisco es para copiar los 2 archivos
COPY package*.json ./
# installo los modulos de node
RUN npm install 
# copia mi codigo
COPY . .
# expongo el puerto 3000
EXPOSE 3000

CMD ["npm", "run", "dev"]