# Usa una imagen base de Ubuntu
FROM ubuntu:22.04

# Establece el maintainer
LABEL maintainer="statick88@example.com"

# Establece la zona horaria y evita la interacción durante la instalación
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Mexico_City

# Actualiza e instala dependencias básicas
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    build-essential \
    libxml2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libgit2-dev \
    zlib1g-dev \
    libpng-dev \
    libjpeg-dev \
    tzdata \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Instala LaTeX completo (para generación de PDF)
RUN apt-get update && apt-get install -y \
    texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Descarga e instala la última versión de Quarto
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.5.57/quarto-1.5.57-linux-amd64.deb \
    && dpkg -i quarto-1.5.57-linux-amd64.deb \
    && rm quarto-1.5.57-linux-amd64.deb

# Establece el directorio de trabajo
WORKDIR /workspace

# Copia el contenido del proyecto
COPY . /workspace

# Expone el puerto para el preview en HTML
EXPOSE 4321

# Comando por defecto para iniciar el contenedor
CMD ["quarto", "preview"]
