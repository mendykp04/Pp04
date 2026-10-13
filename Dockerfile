FROM nginx:alpine

# แพลตฟอร์มส่วนใหญ่กำหนดพอร์ตผ่านตัวแปร PORT ถ้าไม่กำหนดจะใช้ 80
ENV PORT=80
RUN mkdir -p /etc/nginx/templates && \
    printf 'server {\n  listen ${PORT};\n  root /usr/share/nginx/html;\n  index index.html;\n}\n' \
    > /etc/nginx/templates/default.conf.template

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
