### Build
FROM --platform=linux/amd64 beevelop/ionic:latest AS ionic

# Set the environment variable to use the OpenSSL legacy provider
ENV NODE_OPTIONS=--openssl-legacy-provider

# Install Ionic globally
RUN npm install -g @ionic/cli

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install --legacy-peer-deps --omit=optional

# Bundle app source
COPY . .
RUN ionic build

### Run 
FROM --platform=linux/amd64 nginx:alpine
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html
