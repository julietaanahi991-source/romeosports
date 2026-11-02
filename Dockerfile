# Link-in-bio de Romeo Sports: sitio estático servido con nginx
FROM nginx:1.27-alpine

# Puerto configurable (Railway, Render, Cloud Run, etc. inyectan PORT); 80 por defecto
ENV PORT=80

# La imagen oficial de nginx reemplaza ${PORT} en las plantillas al iniciar
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
