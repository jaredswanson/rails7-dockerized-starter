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

### Accessing the Rails Console

If you need to access the Rails console while your app is running within a Docker container, you can do so with the following steps:

1. **List all running Docker containers**:
   ```bash
   docker ps
   ```

   This will display a list of all running containers and their details. Find the container related to your app (it should have a name like `rails7-docker-starter-web-1`).

2. **Enter the Docker container's shell**:
   ```bash
   docker exec -it <CONTAINER_NAME> bash
   ```

   Replace `<CONTAINER_NAME>` with the appropriate container name from the previous step (e.g., `rails7-docker-starter-web-1`).

3. **Start the Rails console**:
   ```bash
   rails c
   ```

   This will initiate the Rails console, and you can now execute Rails commands as you normally would in a local environment.

Once you're done, you can exit the console by typing `exit` and exit the container shell with another `exit` command.

### Viewing Real-Time Application Logs

To debug issues or to view real-time logs of the application while it's running inside a Docker container, you can attach your terminal to the running container. Here's how:

1. **List all running Docker containers**:
   ```bash
   docker ps
   ```

   This will display a list of all running containers and their details. Find the container related to your app's web process (it should have a name like `rails7-docker-starter-web-1`).

2. **Attach your terminal to the web container**:
   ```bash
   docker attach <CONTAINER_NAME>
   ```

   Replace `<CONTAINER_NAME>` with the appropriate container name from the previous step (e.g., `rails7-docker-starter-web-1`).

Now, your terminal will display real-time logs from the application. This can be useful for debugging issues or to get a sense of the application's activity. 

**Note**: To detach from the container and return to your terminal prompt without stopping the container, you can press `Ctrl` + `P` followed by `Ctrl` + `Q`.

### Lend a Hand!

Got improvements or ideas? Fork the project, open issues, or send pull requests. Your insights and contributions enrich the community!
