# 1. استخدام نسخة Node.js الرسمية والمستقرة
FROM node:20

# 2. إنشاء مجلد العمل داخل السيرفر
WORKDIR /app

# 3. تثبيت أداة فك الضغط داخل السيرفر
RUN apt-get update && apt-get install -y unzip

# 4. نسخ ملف الـ zip من المستودع إلى السيرفر
COPY bo4t.zip .

# 5. فك ضغط الملف وتثبيت المكتبات تلقائياً
RUN unzip -o bo4t.zip && npm install

# 6. أمر تشغيل البوت الأساسي
CMD ["node", "main.js"]
