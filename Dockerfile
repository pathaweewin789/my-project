# ใช้ Node.js image เป็น base image
FROM node:14

# ตั้งค่า working directory
WORKDIR /usr/src/app

# คัดลอกไฟล์ทั้งหมดจากเครื่อง local ไปที่ container
COPY . .

# ติดตั้ง dependencies (หากมี)
RUN npm install

# รันโปรแกรม
CMD ["node", "index.js"]
