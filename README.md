## Rails 7 Dockerized Starter with Hotwire, Stimulus, and TailwindCSS

This starter kit provides a pre-configured Rails 7 application with Docker, Hotwire, Stimulus, TailwindCSS, and other essential tools to kick-start your next big idea. Just clone, `docker-compose up -d`, and start building!

### Features

- **Dockerized Rails 7**: Run the app with a single command using Docker and Docker Compose.
- **Hotwire & Stimulus**: Integrated Hotwire (via `turbo-rails`) and Stimulus for modern web interactivity.
- **TailwindCSS**: Pre-configured with TailwindCSS for utility-first styling.
- **Devise**: Ready-to-use authentication system.
- **Sidekiq & Redis**: Background job processing with Sidekiq and Redis.
- **Database**: PostgreSQL as the primary database.

### Prerequisites

- Docker and Docker Compose installed on your machine.

### Quick Start

1. **Clone the repository**:
   ```bash
   git clone https://github.com/jaredswanson/rails7-dockerized-starter.git
   cd rails7-dockerized-starter
   ```

2. **Set environment variables**:
   Copy `.env.example` to `.env` and update with your desired configuration.

3. **Start the application**:
   ```bash
   docker compose up -d
   ```

4. Access the app at `http://localhost:3425/`.

### Customization

- **Database**: Update `.env` with your desired PostgreSQL username and password.
- **Port**: By default, the app runs on port `3425`. You can change this in `docker-compose.yml`.

### Contributing

Feel free to fork, submit issues, or pull requests. Contributions are welcome!
