# Build stage
FROM node:22-alpine AS build
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Build the application
COPY . .
RUN npm run build

# Production stage
FROM nginx:alpine
# Copy built files from build stage (adjust path based on your Angular output)
# Standard Angular 17+ build output is in dist/<project-name>/browser
COPY --from=build /app/dist/issue-tracker-frontend/browser /usr/share/nginx/html
# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
