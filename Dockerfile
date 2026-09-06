FROM node:20-alpine

# Create working directory
WORKDIR /app

# Install dependencies first (better cache)
COPY package*.json ./
RUN npm install --omit=dev --legacy-peer-deps

# Copy all bot files
COPY . .

# Expose your bot port (if any)
EXPOSE 3000

# Start the bot
CMD ["node", "index.js"]
