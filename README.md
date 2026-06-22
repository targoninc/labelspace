# LabelSpace (tri-workspace)

Monorepo for the LabelSpace music label platform. Contains three component projects managed via Git submodules:

| Component | Docker Image | Description |
|-----------|-------------|-------------|
| [artist-space-backend](./artist-space-backend) | `loudar/labelspace-api` | Backend API (Express + MariaDB) |
| [artist-space-ui](./artist-space-ui) | `loudar/labelspace-ui` | Artist portal frontend |
| [tri-web](./tri-web) | — | Public label website |

## Quick Start

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

Each component repo has its own [Forgejo Actions](https://forgejo.org/docs/next/user/actions/) workflow (compatible with Codeberg):

| Repo | Workflow | Image |
|------|----------|-------|
| [`artist-space-backend`](./artist-space-backend) | [`.forgejo/workflows/build.yml`](./artist-space-backend/.forgejo/workflows/build.yml) | `loudar/labelspace-api` |
| [`artist-space-ui`](./artist-space-ui) | [`.forgejo/workflows/build.yml`](./artist-space-ui/.forgejo/workflows/build.yml) | `loudar/labelspace-ui` |

Set `DOCKER_USERNAME` and `DOCKER_PASSWORD` secrets in each repo's settings.
