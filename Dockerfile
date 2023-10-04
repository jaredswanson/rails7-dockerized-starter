# Use the specified Ruby runtime as a parent image
FROM ruby:3.2.2

# Set the working directory in the Docker image
WORKDIR /app

# Install Node.js and Yarn
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# Add Yarn to the PATH
ENV PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock ./

# Install bundle
RUN bundle install

# Copy the current directory contents into the image
COPY . .

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Expose port 3000 to interact with the app
EXPOSE 3000

# The command to run the application using Puma
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

