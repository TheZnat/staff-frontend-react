# Используем образ дистрибутив линукс Alpine с версией Node -20 Node.js
FROM node:20-alpine

# Указываем нашу рабочую дерикторию
WORKDIR /client

# Копируем package.json и package-lock.json внутрь контейнера
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем оставшееся приложение в контейнер
COPY . .


# Уведомление о порте, который будет прослушивать работающее приложение
EXPOSE 3000

# Запускаем сервер
CMD [ "npm", "run","start" ]