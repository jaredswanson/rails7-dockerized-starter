## Rails 7 Dockerized Starter with Hotwire, Stimulus, and TailwindCSS

Dive into your Rails projects faster than ever! This barebones starter kit is your ready-to-code setup offering Rails 7 with Docker. The combination of Hotwire, Stimulus, TailwindCSS, and other integrated tools ensure you spend less time configuring and more time creating.

### Why Use This Starter?

- 🚀 **Quick Start**: Clone, run `docker-compose up -d`, and start crafting your application.
- 🎨 **Modern Styling with TailwindCSS**: Create beautiful UIs without fuss.
- ⚡ **Hotwire & Stimulus**: Enjoy modern web interactivity without wrangling with configurations.
- 🔒 **Devise**: A secure, out-of-the-box authentication system.
- 🔄 **Background Jobs with Sidekiq & Redis**: Handle tasks asynchronously with ease.
- 🐘 **PostgreSQL**: A reliable, production-ready database.

### Potential Use-Cases

- **Rapid Prototyping**: Convert your idea into a working prototype without dealing with the setup hustle.
- **Learning Environment**: A sandbox for experimenting with the latest Rails 7 features.
- **Base for Production Apps**: A foundation for building scalable Rails applications.

### Getting Started

**Prerequisites**:
- Docker and Docker Compose installed on your machine.

**Steps**:
1. **Get the code**:
   ```bash
   git clone https://github.com/jaredswanson/rails7-dockerized-starter.git
   cd rails7-dockerized-starter
   ```

2. **Environment Setup**:
   Duplicate `.env.example` to `.env` and modify as necessary. Ensure you set the appropriate values for `POSTGRES_USER`, `POSTGRES_PASSWORD`, and `POSTGRES_DB`.

3. **Build the Docker images**:
   ```bash
   docker-compose build
   ```

4. **Set up the database**:
   ```bash
   docker-compose run web rails db:create db:migrate
   ```

5. **Launch the App**:
   ```bash
   docker compose up -d
   ```

6. Your Rails app is now live at `http://localhost:3425/`!

### Making It Yours

- **Database Config**: Modify `.env` to set your PostgreSQL credentials and database name.
- **Port Customization**: The default port is `3425`, but you can alter this in `docker-compose.yml`.

### Lend a Hand!

Got improvements or ideas? Fork the project, open issues, or send pull requests. Your insights and contributions enrich the community!
