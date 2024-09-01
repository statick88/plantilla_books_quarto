# Título del Curso

`Elaborado por:` [Nombre del Autor][def]

`Fecha de Elaboración:` Julio del 2024

`Fecha de Actualización:` Agosto del 2024

> Estos recursos los puedes encontrar en el siguiente link para ir paso a paso con el curso [Nombre del Curso][def]

## Objetivo Principal

<p style="text-align: justify">
Describimos el objetivo principal.
</p>

## Objetivos Secundarios

- Describimos los 
- Objetivos secundarios

## ¿Por qué seguir este curso?

<p style="text-align: justify">
Describimos los beneficios de seguir este curso.
</p>

## ¿Qué aprenderé durante este curso?

Descripción general de lo que se aprenderá.
- Describimos el detalle
- De lo que se aprenderá
- En el curso

## Metodología

<p style="text-align: justify">
Describimos la metodología que se utilizará.
</p>

# Temas

Describimos los temas que se tratarán.
## Tema 1

<p style="text-align: justify">
Descripción del Tema 1.
</p>

- **Unidad 1:** Introducción al curso
  - Describimos las subunidades de esta sección

- **Unidad 2:** Describimos la unidad 2
  - Describimos las subunidades de la unidad 2

## Proyecto Final

<p style="text-align: justify">
Describimos el proyecto final.
</p>

  - Planificación y Diseño
  - Desarrollo e Implementación
  - Presentación y Evaluación

# Público Objetivo

<p style="text-align: justify">
Describimos el Público Objetivo.</p>

# Recursos Hardware y Software

- **Hardware:** PC o laptop con capacidad suficiente para ejecutar entornos de desarrollo Django y React.
  - **CPU:** i5 o i7 superior a 10ma Generación
  - **RAM:** Mínimo 8 GB de RAM, de preferencia 16 GB, 32 GB o 64 GB.

- **Software:** Describimos el software.

# Conocimientos Previos

> Se describen los conocimientos previos.

# Dedicación para Actividades Prácticas Fuera del Curso

> [!TIP]
> Se brindan uno o más tips.

---

## Cómo Usar Este Repositorio

Este repositorio está diseñado para facilitar la creación y manejo de libros electrónicos con Quarto. A continuación, se describen los pasos para configurar y usar este proyecto utilizando Docker.

### Requisitos Previos

- Docker y Docker Compose instalados en tu sistema.

### Configuración Rápida

1. **Clona este repositorio:**

```bash
git clone https://github.com/statick88/plantilla_books_quarto.git
cd plantilla_books_quarto
```

2. **Construye la imagen de Docker:**

```bash
docker build -t statick/quarto-book:latest .
```
3. **Inicia el contenedor:**

```bash
docker compose up --build -d
```

Esto iniciará un servidor que renderizará tu libro y lo hará accesible en el puerto **4321**.

4. **Vista Previa:**

Abre tu navegador y dirígete a [http://localhost:4321](http://localhost:4321) para ver una vista previa en vivo de tu libro.

5. **Generación de PDF:**

Puedes generar la versión PDF de tu libro ejecutando el siguiente comando dentro del contenedor:

```bash
docker-compose run quarto-book quarto render --to pdf
```

6. ***Borrar y Reemplazar***

Si deseas reutilizar esta plantilla para un nuevo libro electrónico, simplemente sigue estos pasos:

Elimina los archivos existentes:

```bash
rm -rf ./* && rm -rf ./.git
```

Reemplaza con el contenido de tu nuevo proyecto.

Para más detalles, visita el [repositorio de GitHub](https://github.com/statick88/plantilla_books_quarto).