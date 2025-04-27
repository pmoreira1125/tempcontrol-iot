	# Base oficial Node-RED
FROM nodered/node-red:3.1.7-18

# Instalar dependências extras
RUN npm install node-red-dashboard node-red-contrib-mqtt-broker

# Copiar o fluxo padrão
COPY flows.json /data/flows.json

# Expor a porta padrão do Node-RED
EXPOSE 1880

# Comando para iniciar
CMD ["npm", "start", "--", "--userDir", "/data"]
