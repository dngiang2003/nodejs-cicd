
# Sử dụng Node.js official image làm base image
FROM node:20-alpine AS build

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt dependencies
RUN npm install --force

# Copy toàn bộ source code vào container
COPY . .

# Expose port mà ứng dụng sẽ chạy
EXPOSE 3000

# Command để chạy ứng dụng
CMD ["node", "index.js"]
