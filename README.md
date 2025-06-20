# React Design System MF

This project leverages React, TypeScript, and Vite, and is fully containerized with Docker for a streamlined development experience.

It also implements a micro-frontend architecture using the [@originjs/vite-plugin-federation](https://github.com/originjs/vite-plugin-federation) plugin.

## Prerequisites

- [Docker Desktop v4.41.2](https://www.docker.com/products/docker-desktop/) or higher installed on your machine.

## Environment Variables Setup

Before starting, copy the example environment file to create your local configuration:

```bash
cp .env.example .env.local
```

Edit `.env.local` and set your own values as needed.

> **Note:**  
> All environment variables you want to access in your Vite React code must start with the prefix `VITE_`.  
> In your code, access them using `import.meta.env.VITE_YOUR_VARIABLE_NAME`.

## Getting Started

To start the application locally, run the following command. This will build the Docker image, install dependencies, and start the development server:

```bash
docker compose up --build
```

The application will be available at [http://localhost:5173](http://localhost:5173).

## Running npm Scripts Inside the Container

To execute npm commands (such as installing new dependencies or running scripts), open a new terminal and use:

```bash
docker exec -it reactdesignsystemmf npm install <package> [--save-dev]
```

```bash
docker exec -it reactdesignsystemmf npm run <script>
```

Replace `<package>` and `<script>` with the desired package name or npm script.

## Stopping the Container

To stop the running container, press `Ctrl + C` in the terminal where `docker compose up` is running.

## Additional Notes

- All dependencies are managed inside the container; you do not need to run `npm install` on your host machine.
- To fully reset your Docker environment (removing all containers, images, and volumes), use:
  ```bash
  docker system prune -a --volumes
  ```
  **Warning:** This will remove all Docker data from your system.

---

Feel free to contribute or open issues if you encounter any problems!
