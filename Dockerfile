# Используйте образ Node.js в качестве базового
FROM asciidoctor/docker-asciidoctor

# Установите Asciidoctor.js и любой статический сервер, например, http-server
# RUN npm install asciidoctor --save

# Создайте рабочую директорию
WORKDIR /app

# Скопируйте содержимое текущей директории в рабочую директорию
COPY . .

# Сгенерируйте HTML из .adoc файлов
# RUN find . -name '*.adoc' -exec asciidoctor {} \;

# Запустите сервер для отображения сгенерированных HTML-файлов
# CMD ["node", "app.js"]
# CMD ["echo", "HELLO"]
CMD [ "find . -name \"*.adoc\" -exec sh -c 'mkdir -p build/$(dirname \"{}\") && asciidoctor -a toc -a search -r asciidoctor-diagram -D build/$(dirname \"{}\") \"{}\"' \;" ]


# НУЖНО ИЗВЛЕЧЬ АРТИФАКТЫ (НУ ИЛИ СРАЗУ В CI ИДТИ)