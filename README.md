# Dev Portfolio — تطبيق Flutter

تطبيق Portfolio شخصي بهوية بصرية مستوحاة من محرر الأكواد (IDE):
خلفية كحلي غامق، لون تمييز كهرماني/نعناعي، وعناصر على شكل نوافذ Terminal بدل الكروت التقليدية.

## التشغيل
```bash
flutter pub get
flutter run
```

## هيكل المشروع
```
lib/
  main.dart              # نقطة الدخول + شريط التنقل السفلي (بأسلوب تبويبات الملفات)
  theme/app_theme.dart    # الألوان والخطوط (JetBrains Mono + Inter)
  models/project.dart     # بيانات المشاريع - عدّلها ببياناتك
  screens/
    home_screen.dart      # نبذة عنك
    projects_screen.dart  # قائمة المشاريع
    skills_screen.dart    # المهارات مع أشرطة تقدم
    contact_screen.dart   # روابط التواصل
  widgets/
    terminal_block.dart   # ويدجت قابل لإعادة الاستخدام بشكل نافذة Terminal
    project_card.dart     # بطاقة عرض مشروع واحد
```

## قبل النشر — عدّل هذه الأشياء
1. **lib/screens/home_screen.dart**: اسمك، النبذة التعريفية، الإحصائيات.
2. **lib/models/project.dart**: مشاريعك الحقيقية وروابط GitHub.
3. **lib/screens/contact_screen.dart**: روابطك الفعلية (GitHub, LinkedIn, Email, WhatsApp).
4. أضف أيقونة التطبيق (`flutter_launcher_icons`) وشاشة splash إذا حبيت.

## النشر على Firebase Hosting (جاهز بالمشروع)

الملفات `firebase.json` و `.firebaserc` و `.github/workflows/firebase-hosting.yml` موجودة مسبقاً. خطوات التفعيل:

### نشر يدوي (أول مرة)
```bash
npm install -g firebase-tools
firebase login
```
1. افتح `.firebaserc` وبدّل `REPLACE_WITH_YOUR_FIREBASE_PROJECT_ID` بمعرّف مشروعك من [Firebase Console](https://console.firebase.google.com).
2. ابنِ ونشر:
```bash
flutter build web --release
firebase deploy
```
رح تحصل على رابط مباشر مثل `your-project.web.app`.

### نشر تلقائي (CI/CD عبر GitHub Actions)
الملف `.github/workflows/firebase-hosting.yml` بينشر تلقائياً كل ما تعمل push على branch `main`. تحتاج تجهّز:

1. **استبدل** `REPLACE_WITH_YOUR_FIREBASE_PROJECT_ID` داخل ملف الـ workflow بمعرّف مشروعك.
2. **أنشئ Service Account Key** من Firebase Console:
   - Project Settings → Service Accounts → Generate New Private Key
3. **أضف السر بـ GitHub**: Repo → Settings → Secrets and variables → Actions → New repository secret
   - الاسم: `FIREBASE_SERVICE_ACCOUNT`
   - القيمة: محتوى ملف الـ JSON اللي نزلته بالخطوة السابقة (انسخه كامل)
4. اعمل push للكود على branch `main` — أول build وdeploy رح يصير تلقائياً.

بعدها أي تعديل تعمله وتعمله push، رح ينعكس على الموقع خلال دقائق بدون ما تكتب أي أمر يدوي.
