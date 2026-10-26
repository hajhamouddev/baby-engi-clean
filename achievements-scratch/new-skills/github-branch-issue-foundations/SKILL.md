---
name: github-branch-issue-foundations
status: pending_user_audit
source: github_course_agent
date: 2026-10-03
---

# github-branch-issue-foundations

## الوصف والسياق (Description)
توثيق متطلبات ومخرجات الخطوة الأولى من مسار **Introduction to GitHub** (`skills/introduction-to-github`):
1. **عزل التغييرات عبر الفروع (Branching Isolation)**:
   - الفرع الافتراضي `main` يمثل الشيفرة الإنتاجية المستقرة.
   - إنشاء فرع موازٍ (مثل `my-first-branch`) يتيح للمطور والعميل الذكي إجراء التعديلات وتجربة الميزات بمعزل تام دون التأثير على الفرع الرئيسي.
2. **صياغة وهيكلة الـ Markdown (`.md`)**:
   - استخدام ترويسات GitHub Flavored Markdown، القوائم، وصياغة ملفات التعريف الشخصية والمشاريع مثل `PROFILE.md`.
3. **هيكلة الـ Issues وربطها بالتدفق البرمجي**:
   - صياغة تذاكر العمل والمهام (Issues) وتتبعها، وربطها بالفروع والـ commits عبر الكلمات المفتاحية (`fixes #issue_id`, `closes #issue_id`).
4. **شروط مسار GitHub Skills**:
   - مطابقة اسم الفرع بدقة (`my-first-branch`).
   - إنشاء ملف `PROFILE.md` داخل جذر المستودع وتأكيد التغيير برسالة التزام وصفية تُفعل فحص GitHub Actions التلقائي من Mona/GitHub Bot.

## كيفية الاستخدام والتطبيق (Usage)

### 1. إنشاء الفرع الموازي والتبديل إليه
```bash
# إنشاء فرع جديد والتبديل إليه مباشرة
git checkout -b my-first-branch

# أو باستخدام الأمر الحديث
git switch -c my-first-branch
```

### 2. صياغة ملف Markdown وفق معايير GitHub
```bash
# إنشاء ملف PROFILE.md
cat << 'EOF' > PROFILE.md
# Hi, I'm Haj Hamoud 👋

- 🚀 Advanced Engineering Systems & Custom Agents
- 🛠️ Monorepo Architectures & Anti-Ban Cooldown Workflows
- 📌 Focus: High-tier proprietary tooling under Baby.eng

EOF
```

### 3. تسجيل التغييرات (Commit) وفق معايير Conventional Commits
```bash
# فحص حالة الفرع والملفات
git status

# إضافة الملف إلى Stage
git add PROFILE.md

# تسجيل الالتزام برسالة واضحة
git commit -m "docs: add PROFILE.md introducing profile overview"
```

### 4. رفع الفرع للـ Remote لتفعيل إشعار المسار (Mona Bot)
```bash
# رفع الفرع وتعيين الـ upstream
git push -u origin my-first-branch
```

### 5. قالب هيكلة Issue احترافي لربط المهام
```markdown
### Description
تهيئة فرع العمل وملف التعريف الشخصي الأولي لمسار GitHub Foundations.

### Tasks
- [x] إنشاء الفرع المعزول `my-first-branch`
- [x] صياغة ملف `PROFILE.md` بترميز Markdown
- [ ] فتح Pull Request إلى `main` للمراجعة
```

## التدقيق اليدوي (Manual Audit)
- [ ] تمت المراجعة من قبل Haj Hamoud
- [ ] صالحة للترقية إلى core-engine والأخوة
