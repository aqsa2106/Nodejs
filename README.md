# Web App

This is a simple web application built with React. The application includes a home page, a dashboard, and a 404 not found page. It also includes a navigation bar for easy navigation between pages.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)
- [Build](#build)
- [Testing](#testing)
- [CI/CD Pipeline](#cicd-pipeline)
- [Docker](#docker)
- [License](#license)

## Installation

To install the dependencies, run the following command:

```bash
npm install
```

## Usage

To start the development server, run the following command:

```bash
npm start
```

The application will be available at `http://localhost:3000`.

## Development

The project structure is as follows:

```
src/
  ├── components/
  │   └── Navbar.js
  ├── pages/
  │   ├── Dashboard.js
  │   ├── Home.js
  │   └── NotFound.js
  ├── App.js
  ├── index.css
public/
  └── index.html
package.json
```

## Build

To create an optimized production build, run the following command:

```bash
npm run build
```

## Testing

To run the tests, use the following command:

```bash
npm test
```

## CI/CD Pipeline

The project includes a GitHub Actions workflow for CI/CD. The workflow is defined in `.github/workflows/ci-cd.yml` and includes the following jobs:

- `build`: Checks out the code, sets up Node.js, installs dependencies, and builds the application.
- `docker`: Builds and pushes a Docker image to DockerHub.

## Docker

To build and run the Docker image locally, use the following commands:

```bash
docker build -t web-app .
docker run -p 3000:3000 web-app
```

## License

This project is licensed under the MIT License.
