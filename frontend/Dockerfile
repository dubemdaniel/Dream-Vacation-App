# Stage 1 - Build the React app
FROM node:18-alpine AS build

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the frontend code
COPY . .

# Build the React app for production
RUN NODE_OPTIONS=--openssl-legacy-provider npm run build

# Stage 2 - Serve the built app with nginx
FROM nginx:alpine

# Copy the built files from Stage 1 into nginx
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# nginx starts automatically
CMD ["nginx", "-g", "daemon off;"]