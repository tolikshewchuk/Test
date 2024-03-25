# Використовуємо офіційний образ nginx
FROM nginx:latest

# Копіюємо сторінку "Тестове Завдання Виконано" у директорію /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/

# Відкриваємо порти
EXPOSE 88

# Запускаємо nginx при старті контейнера
CMD ["nginx", "-g", "daemon off;"]
