# Punto de Acceso Rápido — Script Bash

Script Bash para **crear y gestionar un punto de acceso Wi-Fi en Linux** utilizando NetworkManager (`nmcli`).

El script permite iniciar, detener y comprobar el estado del punto de acceso `p0rtAP` de forma sencilla.

## 🚀 Funciones

El script dispone de tres opciones:

- `start` → Inicia el punto de acceso Wi-Fi y solicita una contraseña.
- `stop` → Detiene el punto de acceso.
- `status` → Comprueba si el punto de acceso está activo.

## 📋 Requisitos

- Linux
- Bash
- NetworkManager
- `nmcli`
- Una interfaz Wi-Fi compatible con modo AP
- Permisos `sudo`

En este proyecto la interfaz Wi-Fi utilizada es:

```text
wlo1
```

El nombre del punto de acceso es:

```text
p0rtAP
```

## 📥 Instalación

Clona el repositorio:

```bash
git clone git@github.com:Hector252006/PUNTO-DE-ACCESO-RAPIDO-SCRIPT-BASH-AUTOMATIZADO.git
```

Entra en la carpeta:

```bash
cd PUNTO-DE-ACCESO-RAPIDO-SCRIPT-BASH-AUTOMATIZADO
```

Dale permisos de ejecución:

```bash
chmod +x controlap.sh
```

## ▶️ Uso

Ejecuta:

```bash
./controlap.sh
```

El script mostrará:

```text
Bienvenido Hector q quieres hacer con p0rtAP [start][stop][status]
```

### Iniciar

Selecciona:

```text
start
```

El script solicitará una contraseña.

La contraseña debe:

- No estar vacía.
- Tener al menos **12 caracteres**.

Después se ejecutará `nmcli` para crear el punto de acceso.

### Detener

Selecciona:

```text
stop
```

Esto ejecutará:

```bash
sudo nmcli connection down Hotspot
```

### Comprobar estado

Selecciona:

```text
status
```

El script comprobará si la conexión `Hotspot` está activa.

## 🔐 Seguridad

La contraseña del Wi-Fi **no está escrita en el código fuente**.

El script la solicita al ejecutarse:

```bash
read -p "introduce la contraseña para la red wifi" pass
```

Por tanto, **no se debe introducir ninguna contraseña real directamente en el código** antes de publicar el proyecto.

> ⚠️ Este proyecto está pensado como una herramienta sencilla para uso personal y educativo.

## 🧠 ¿Qué estoy aprendiendo con este proyecto?

Este proyecto sirve también como práctica de:

- Bash scripting
- Variables
- `if / elif / else`
- `while`
- `case`
- Operadores lógicos
- Comparación de cadenas y números
- Parámetros de Bash
- `sudo`
- NetworkManager
- `nmcli`
- Gestión de interfaces Wi-Fi
- Git y GitHub

## 📁 Estructura

```text
PUNTO-DE-ACCESO-RAPIDO-SCRIPT-BASH-AUTOMATIZADO/
│
├── controlap.sh
└── README.md
```

## 👨‍💻 Autor

**Hector252006**

Proyecto creado como práctica de Bash/Linux y automatización de un punto de acceso Wi-Fi.
