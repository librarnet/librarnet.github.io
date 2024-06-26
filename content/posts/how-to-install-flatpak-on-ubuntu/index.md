---
title: "تحزيم فلاتباك: لمحة عنه وطريقة تثبيته على Ubuntu"
date: 2022-10-28
tags: ["توزيعات","فلات باك"]
image : "thumbnail.webp"
url: /how-to-install-flatpak-on-ubuntu
series: ["توزيعات","فلات باك"]
series_order: 01
showAuthor: false
authors:
  - "khalid"
description: دليل مبسط يشرح كيفية تثبيت Flatpak على توزيعة Ubuntu مع بعض المعلومات حول تحزيم فلاتباك
---

دليل مبسط يشرح كيفية تثبيت Flatpak على توزيعة Ubuntu وتحديدا الإصدار رقم 22.04، مع بعض المعلومات حول تحزيم فلاتباك.

## لمحة عن تحزيم فلاتباك

هو عبارة عن تحزيم يتيح لك بناء البرامج مع الإعتماديات المطلوبة وبالتالي تشغيلها على أي توزيعة لينكس وفي نفس الوقت يُشترط أن يكون مثبت عليها Flatpak.

### بعض ميزات تحزيم فلاتباك

- مفتوح المصدر بالكامل؛

- حل عملي لمشكلة إعتماديات البرامج على توزيعات لينكس؛

- عزل البرامج قدر الإمكان لتحقيق أقصى حماية ممكنة؛

- يدعم إدار صلاحيات التطبيقات المثبتة عن طريق مدير حزم فلاتباك؛

- يوفر لك حرية تثبيت العديد من التطبيقات بسهولة تامة.

## كيف تقوم بتثبيت Flatpak على Ubuntu

تثبيت فلاتباك على أوبنتو هي عملية سهلة وفي هذا الدليل سنتعلم كيفية تثبيته وضبطه على هذه التوزيعة وبالتحديد الإصدار رقم 22.04 من خلال تطبيق الخطوات الموضحة أدناه.

**ماذا ستحتاج لتطبيق هذا الشرح؟**

- استخدام الطرفية (سطر الأوامر)
- اتصال بالانترنت
- قليل من التركيز فقط

### 1\. تحديث النظام

يُفضل أولا تحديث نظامك عن طريق الأوامر التالية بالترتيب:

الأمر الأول:

```shell
sudo apt update -y
```

الأمر الثاني:

```shell
sudo apt upgrade -y
```

### 2\. تثبيت Flatpak

الآن ستقوم بتثبيت Flatpak على نظامك عن طريق الأمر التالي:

```shell
sudo apt install flatpak
```

بمجرد التثبيت يمكنك التحقق من الإصدار عن طريق الأمر:

```shell
flatpak --version
```

### 3\. تفعيل مستودع Flathub لتثبيت تطبيقات Flatpak

الآن ستحتاج إلى ربط مدير حزم Flatpak بمستودع [Flathub](https://flathub.org/apps) حيث توجد العديد من التطبيقات والتي يمكنك تثبيتها على أي توزيعة لينكس.

يمكن تفعيل مستودع Flathub عن طريق كتابة الأمر التالي في الطرفية:

```shell
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

بهذا ستكون قد قمت بتهيئة توزيعة Ubuntu لتثبيت تطبيقات Flatpak.

كان هذا دليل مبسط قدمنا فيه لمحة عن فلاتباك وبعض ميزاته بالإضافة إلى طريقة التثبيت وتطرقنا ايضا إلى تفعيل مستودع Flathub حتى يسهُل عليك مستقبلا الوصول إلى التطبيقات وتثبيتها منه.
