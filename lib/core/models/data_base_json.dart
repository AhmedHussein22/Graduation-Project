class DataBaseJson {
  static List<String> sliderImages = [
    "assets/images/intro1.jpg",
    "assets/images/intro2.jpeg",
    "assets/images/intro3.jpg",
    "assets/images/slider1.png",
  ];
  static List<Map<String, dynamic>> offers = [
    {
      "image": "assets/images/off1.jpg",
      "offname": "مراجعة علوم 3اعدادي",
      "teachername": "نادر محمد",
      "data": "22/9/2021",
      "hours": "3",
      "prices": "30",
    },
    {
      "image": "assets/images/off2.jpg",
      "offname": "حصة رياضيات 6ابتدائي",
      "teachername": "نهال احمد",
      "data": "22/8/2021",
      "hours": "2",
      "prices": "20",
    },
    {
      "image": "assets/images/off3.jpg",
      "offname": "حل امتحانات احياء 3 ثانوي",
      "teachername": "احمد حسين",
      "data": "15/8/2021",
      "hours": "2.5",
      "prices": "35",
    },
    {
      "image": "assets/images/off4.jpg",
      "offname": "خصم 20% علي حصة الفزياء",
      "teachername": "ناهد محمد",
      "data": "15/7/2021",
      "hours": "1",
      "prices": "50",
    },
    {
      "image": "assets/images/off5.jpg",
      "offname": "كود خصم  علي تأسيس رياض اطفال ",
      "teachername": "حمدي اشرف",
      "data": "10/9/2021",
      "hours": "20",
      "prices": "30",
    },
    {
      "image": "assets/images/off6.jpg",
      "offname": "مراجعة نحو 2اعدادي",
      "teachername": "اسماء السباعي",
      "data": "10/10/2021",
      "hours": "6",
      "prices": "10",
    },
  ];

  static List<Map<String, dynamic>> teachers = [
    
    {
      "image": "assets/images/FT1.jpg",
      "teachername": "سلمي احمد",
      "subject": "مدرس علوم",
      "level": "مرحله ابتدائيه"
    },
    {
      "image": "assets/images/MT1.jpg",
      "teachername": "احمد رمضان",
      "subject": "مدرس تاريخ",
      "level": "مرحله ثانويه"
    },
    {
      "image": "assets/images/MT2.jpg",
      "teachername": "محمد علاء",
      "subject": "مدرس رياضيات",
      "level": "مرحله اعداديه"
    },
    {
      "image": "assets/images/FT2.jpg",
      "teachername": "هناء ابراهيم",
      "subject": "مدرس لغة عربيه",
      "level": "مرحله اعداديه"
    },
    {
      "image":"assets/images/nad.png",
      "teachername":"نادر محمد",
      "subject":"مدرس علوم",
      "level":"مرحله ابتدائيه"
    },
    {
      "image": "assets/images/MT3.jpg",
      "teachername": "خالد العطار",
      "subject": "مدرس لغة انجليزيه",
      "level": "مرحله ابتدائيه"
    },
    {
      "image": "assets/images/FT3.jpg",
      "teachername": "منار محمد",
      "subject": "مدرس فيزياء",
      "level": "مرحله ثانويه"
    },
    {
      "image": "assets/images/MT4.jpg",
      "teachername": "علي رمضان",
      "subject": "مدرس كيمياء",
      "level": "مرحله ثانويه"
    },
    {
      "image": "assets/images/FT4.jpg",
      "teachername": "ياسمين سيد",
      "subject": "مدرس تأسيس",
      "level": "مرحله رياض اطفال"
    },
    {
      "image": "assets/images/MT5.jpg",
      "teachername": "علاء عوص",
      "subject": "مدرس رياضيات",
      "level": "مرحله ثانويه "
    },
  ];

  static List<Map<String, dynamic>> rating = [
    {
      "image": "assets/images/student3.png",
      "name": "يمني فريد",
      "data": "3",
      "rating": 4.0,
      "comment": "رائع جدا ،لقد استفدت كثيرا",
    },
    {
      "image": "assets/images/MS1.jpg",
      "name": "خالد محمد",
      "data": "5",
      "rating": 2.0,
      "comment": "جيد ولكن توجد بعض السلبيات",
    },
    {
      "image": "assets/images/MS2.jpg",
      "name": "احمد علاء",
      "data": "6",
      "rating": 5.0,
      "comment": "ممتاز ",
    },
    {
      "image": "assets/images/FS2.jpg",
      "name": "ليلي محمد",
      "data": "2",
      "rating": 4.0,
      "comment": "رائع ",
    },
    {
      "image": "assets/images/MS3.jpg",
      "name": "علاء عبد الباسط",
      "data": "8",
      "rating": 1.0,
      "comment": "يحتاج الي الكثير من التحسين",
    },
    {
      "image": "assets/images/MS4.jpg",
      "name": "ولدنا قفشه",
      "data": "4",
      "rating": 5.0,
      "comment": "لقد كان شرحا رائعا",
    },
  ];

  static List<Map<String, dynamic>> completService = [
    {
      "title": "تم الانتهاء من حصة الاحياء مع  محمود عوض",
      "data": "10/8/2021",
    },
    {
      "title": "تم الانتهاء من حصة الرياضة مع نهال احمد",
     "data": "5/8/2021",
    },
    {
      "title": "تم الانتهاء من حصة تاسيس مع يمني فريد",
      "data": "2/8/2021",
    },
  ];

  static List<Map<String, dynamic>> uncompletService = [
    {
      "title": "الطالب احمد خالد يريد درس حصة احياء في مدينة الفيوم",
      "data": "20/8/2021",
      "hours":"3"
    },
    {
      "title": "الطالب محمد عامر يريد درس حصة فيزياء في مدينة 6اكتوبر",
     "data": "5/8/2021",
     "hours":"2"
    },
    {
      "title": "الطالبة يمني محمد تريد درس حصة علوم في مدينة القاهرة الجديد",
      "data": "4/8/2021",
      "hours":"3"
    },
    {
      "title": "الطالب  محمد عامر يريد درس حصة علوم في مدينة القاهرة ",
      "data": "3/8/2021",
      "hours":"1"
    },
    {
      "title": "الطالبة شروق السباعي تريد درس حصة كيمياء في مدينة الاسكندرية",
      "data": "3/8/2021",
      "hours":"2"
    },
   
  ];
}
