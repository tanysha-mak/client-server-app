# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  ### POSITIONS

Position.create!([
  {name: "Экономист 1 категории"},
  {name: "Экономист 2 категории"},
  {name: "Юрист 1 категории"},
  {name: "Юрист 2 категории"},
  {name: "Зам. начальника отдела продаж"},
  {name: "Начальник отдела продаж"},
  {name: "Бухгалтер"},
  {name: "Главный бухгалтер"},
  {name: "Финансист"},
  {name: "Менеджер по продажам"}
  ])


  ### USERS
def random_work_exp
    Time.now-rand(6..20).month
end
path_to_avatars = "#{Rails.root}/app/assets/images/avatars/"
imgs = ["0.jpg", "1.jpg","2.jpg","3.jpg","4.jpg", "5.jpg"]

u = User.create!(
        {first_name: "Ирина", second_name: "Василенко",  phone_number: "+375295689556",
            position_id: 5, email: "user1@gmail.com",
             password: "admin123", password_confirmation: "admin123", jti: SecureRandom.uuid })
u.created_at = random_work_exp
u.avatar.attach(io: File.open(path_to_avatars+imgs[1]), filename: imgs[1] ,content_type: 'image/jpeg'  )
u.save

u = User.create!({first_name: "Владимир", second_name: "Бойко",  phone_number: "+375295789859",
position: Position.last, email: "user2@gmail.com",
 password: "admin123", password_confirmation: "admin123", jti: SecureRandom.uuid})
u.created_at = random_work_exp
u.avatar.attach(io: File.open(path_to_avatars+imgs[0]), filename: imgs[0],content_type: 'image/jpeg'  )
u.save

u = User.create!(
    {first_name: "Евгений", second_name: "Новенький",  phone_number: "+375337899511",
position_id: 6, email: "admin123@gmail.com", is_chief: true, 
       password: "admin123", password_confirmation: "admin123", jti: SecureRandom.uuid}
  )
  u.created_at = random_work_exp
    u.avatar.attach(io: File.open(path_to_avatars+imgs[3]), filename: imgs[3],content_type: 'image/jpeg'  )
  u.save

  u = User.create!(
    {first_name: "Аркадий", second_name: "Беларченко",  phone_number: "+375337897544",
position_id: 2, email: "user3@gmail.com",
       password: "admin123", password_confirmation: "admin123", jti: SecureRandom.uuid}
  )
  u.created_at = random_work_exp
        u.avatar.attach(io: File.open(path_to_avatars+imgs[2]), filename: imgs[2] ,content_type: 'image/jpeg' )
      u.save

    u = User.create!(
    {first_name: "Анастасия", second_name: "Немцова", phone_number: "+375447891122",
        position_id: 4, email: "user4@gmail.com", 
        password: "admin123", password_confirmation: "admin123", jti: SecureRandom.uuid}
    )
    u.created_at = random_work_exp
    u.avatar.attach(io: File.open(path_to_avatars+imgs[4]), filename: imgs[4],content_type: 'image/jpeg'  )
    u.save

    u = User.create!(
        {first_name: "Юлия", second_name: "Вакуленко", phone_number: "+375447891122",
            position_id: 7, email: "user5@gmail.com", 
            password: "admin123", password_confirmation: "admin123", jti: SecureRandom.uuid}
        )
        u.created_at = random_work_exp
        u.avatar.attach(io: File.open(path_to_avatars+imgs[5]), filename: imgs[5],content_type: 'image/jpeg'  )
        u.save


### TYPES 
    Type.create!([
        {name: "Манифест о торговле"},
        {name: "Заказ товаров и услуг"},
        {name: "План реализации продукции"}
    ])


### DEPARTAMENTS
def random_deadline
    Date.today + rand(-3..15).days
end

def filename(i)
    "Документ_#{i}.docx"
end

path_to_files = "#{Rails.root}/app/assets/doc_files/"


content_type = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    Departament.create!([
        {name: "Отдел закупок"},
        {name: "Отдел сбыта"},
        {name: "Отдел складов"},
        {name: "Отдел менеджмента"},
    ])

###    DOCUMENTS
     d = Document.create!({
        user_id: 1,  name: "Руководство по заграничным закупкам",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(0) ), filename: filename(0), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 1,  name: "Руководство по импортным закупкам",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(0) ), filename: filename(0), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 1,  name: "Руководство по экспортным закупкам",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(0) ), filename: filename(0), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 1,  name: "Новый формат продажи в РБ",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(1) ), filename: filename(1), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 1,  name: "Закупка IT-оборудования",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(2) ), filename: filename(2), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 2,  name: "Закупка IT-оборудования поколения А",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(3) ), filename: filename(3), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 2,  name: "Заблуждения в расчетах ВВП",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(4) ), filename: filename(4), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 2,  name: "Заблуждения в расчетах НРРО",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(4) ), filename: filename(4), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 3,  name: "Новая эра в торговле химикатами",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(5) ), filename: filename(5), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 3,  name: "Новая эра в торговле ядохимикатами",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(5) ), filename: filename(5), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 3,  name: "Объемные постаки в РФ",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(5) ), filename: filename(5), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 3,  name: "Уменьшение кол-ва ошибок в ААПС",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(5) ), filename: filename(5), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 4,  name: "Расчет УРВ в РБ",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(6) ), filename: filename(6), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 4,  name: "Умножение квартальных успехов в АРП",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(7) ), filename: filename(7), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 4,  name: "Принципы обоснования нарушений ОРР",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(8) ), filename: filename(8), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 4,  name: "Принципы обоснования нарушений ЗРФ",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(8) ), filename: filename(8), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 4,  name: "Навыки торговых специалистов",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(9) ), filename: filename(9), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 5,  name: "Нарушения законов РБ при АПР",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(10) ), filename: filename(10), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 5,  name: "Установление РДД в 2022",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(11) ), filename: filename(11), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 5,  name: "Методы экспертных оценок в РФС",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(11) ), filename: filename(11), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 5,  name: "Мастер-классы ведущих экономистов",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(11) ), filename: filename(11), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 6,  name: "Установление РДД в 2022",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(12) ), filename: filename(12), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 6,  name: "Установление РДУА в 2022",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(13) ), filename: filename(13), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 6,  name: "Биржевые тенденции 2021",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(13) ), filename: filename(13), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 6,  name: "Биржевые тенденции 2022",departament_id: rand(1..4), type_id: rand(1..3),
        status: true,  deadline: Date.today
    })
    d.file.attach(io: File.open(path_to_files+filename(13) ), filename: filename(13), content_type: content_type  )
    d.save

    d = Document.create!({
        user_id: 6,  name: "Остаточные стоимости экспорта",departament_id: rand(1..4), type_id: rand(1..3),
        status: false,  deadline: random_deadline
    })
    d.file.attach(io: File.open(path_to_files+filename(13) ), filename: filename(13), content_type: content_type  )
    d.save