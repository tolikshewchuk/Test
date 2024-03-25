# Використовуємо офіційний образ nginx
FROM nginx:latest

# Копіюємо сторінку "Тестове Завдання Виконано" у директорію /usr/share/nginx/html/
ADD index.html /www/data/

# Відкриваємо порти
EXPOSE 88

# Запускаємо nginx при старті контейнера
CMD ["nginx", "-g", "daemon off;"]
