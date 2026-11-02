# Romeo Sports · Link-in-bio

Página de enlaces para la bio de Instagram de Romeo Sports: reseñas en Google y Tripadvisor, cotización por WhatsApp, próximos eventos y redes sociales. Usa la identidad de [romeosports.cl](https://romeosports.cl) (logo, Inter, negro cálido `#1A1714`, beige `#F3F0EA` y terracota `#B24328`).

## Ejecutar con Docker

```bash
docker build -t romeosports-linkbio .
docker run --rm -p 8080:80 romeosports-linkbio
```

Abrir http://localhost:8080.

El puerto interno se puede cambiar con la variable `PORT` (por ejemplo, en Railway, Render o Google Cloud Run):

```bash
docker run --rm -e PORT=3000 -p 3000:3000 romeosports-linkbio
```

## Archivos

| Archivo | Qué es |
|---|---|
| `index.html` | La página completa (HTML + CSS, sin dependencias) |
| `Dockerfile` | Imagen `nginx:1.27-alpine` que sirve la página |
| `nginx/default.conf.template` | Configuración de nginx con puerto variable |

## Pendiente

- Reemplazar el enlace del botón **Opina en Tripadvisor** (`id="tripadvisor-reviews"` en `index.html`) por la URL de la ficha de Romeo Sports en Tripadvisor.
- El logo y las fotos se cargan desde `romeosports.cl/wp-content/...`. Si se borran o renombran en WordPress, conviene copiarlos a esta carpeta.
