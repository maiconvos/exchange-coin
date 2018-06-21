FROM ruby:2.5.1

# Add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install dependenccies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano


# Define path
ENV INSTALL_PATH /exchange-coin

# Make the directory
RUN mkdir -p $INSTALL_PATH

# Set the previous path as main directory
WORKDIR $INSTALL_PATH

# Copy Gemfile into the container
COPY Gemfile ./

# Set path for gems
ENV BUNDLE_PATH /gems

# Copy project into the container
COPY . .