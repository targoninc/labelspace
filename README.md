# LabelSpace (tri-workspace)

Monorepo for the LabelSpace music label platform. Contains three component projects managed via Git submodules:

| Component                                      | Docker Image            | Description                                          |
|------------------------------------------------|-------------------------|------------------------------------------------------|
| [artist-space-backend](./artist-space-backend) | `loudar/labelspace-api` | Backend API (Express + MariaDB)                      |
| [artist-space-ui](./artist-space-ui)           | `loudar/labelspace-ui`  | Artist portal frontend                               |
| [tri-web](./tri-web)                           | —                       | Public label website example (https://trirecords.eu) |

## Deploy

Download [docker-compose.yaml](./docker-compose.yaml) to a directory where you want to keep it. Then, with a terminal open in that directory:

```bash
docker compose pull
docker compose up -d
```

The `api` and `ui` services use pre-built public images from Docker Hub. Set environment variables (see each service's `env_file` reference in `docker-compose.yaml`) before starting.

## Quick Start for development

```bash
# Clone with submodules
git clone --recurse-submodules <repo-url>

# Copy environment files
cp artist-space-backend/.env.example artist-space-backend/.env
cp artist-space-ui/.env.example artist-space-ui/.env
cp tri-web/.env.example tri-web/.env

# Edit .env files with your settings, then:
docker compose up -d
```

See each component's README for detailed setup instructions and environment variable reference.

## CI/CD

Each component repo has its own GitHub Actions workflow that builds and pushes to Docker Hub on pushes to `main`/`master`:

| Repo                                             | Workflow                                                                              | Image                   |
|--------------------------------------------------|---------------------------------------------------------------------------------------|-------------------------|
| [`artist-space-backend`](./artist-space-backend) | [`.github/workflows/build.yml`](./artist-space-backend/.github/workflows/build.yml)   | `loudar/labelspace-api` |
| [`artist-space-ui`](./artist-space-ui)           | [`.github/workflows/build.yml`](./artist-space-ui/.github/workflows/build.yml)        | `loudar/labelspace-ui`  |

Set `DOCKER_USERNAME` and `DOCKER_PASSWORD` secrets in each GitHub repo's settings.
