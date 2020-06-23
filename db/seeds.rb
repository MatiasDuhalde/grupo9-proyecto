# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'faker'


# ----- Admin -----
# Se establece una contraseña 'password' para admins creados por defecto
csv_admins_text = File.read(Rails.root.join('lib', 'seeds', 'admins.csv'))
csv_admins = CSV.parse(csv_admins_text, :headers => true, :encoding => 'utf-8')
csv_admins.each do |row|
  admin = Admin.create! :email => row['email'], :password => 'password',
                        :password_confirmation => 'password'
end

# ----- Comunas -----
# se agregan por defecto las comunas de Santiago
csv_comunas_text = File.read(Rails.root.join('lib', 'seeds', 'comunas_santiago.csv'))
csv_comunas = CSV.parse(csv_comunas_text, :headers => true, :encoding => 'utf-8')
csv_comunas.each do |row|
  comuna = Comuna.new
  comuna.nombre = row['nombre']
  comuna.save
end

# ----- Gustos -----
csv_gustos_text = File.read(Rails.root.join('lib', 'seeds', 'gustos.csv'))
csv_gustos = CSV.parse(csv_gustos_text, :headers => true, :encoding => 'utf-8')
csv_gustos.each do |row|
  gusto = Gusto.new
  gusto.nombre = row['nombre']
  gusto.descripcion = row['descripcion']
  gusto.save
end

# ----- Locales -----
csv_locales_text = File.read(Rails.root.join('lib', 'seeds', 'locales.csv'))
csv_locales = CSV.parse(csv_locales_text, :headers => true, :encoding => 'utf-8')
csv_locales.each do |row|
  local = Local.create! :email => row['email'], :nombre => row['nombre'],
                        :comuna_id => row['comuna_id'], :password => 'qwertyuiop',
                        :password_confirmation => 'qwertyuiop', :place_id => row['place_id'],
                        :descripcion => Faker::Company.bs
end

# ----- Users -----
# Se establece una contraseña '123456' para users creados por defecto
csv_users_text = File.read(Rails.root.join('lib', 'seeds', 'users.csv'))
csv_users = CSV.parse(csv_users_text, :headers => true, :encoding => 'utf-8')
csv_users.each do |row|
  user = User.create! :email => row['email'], :nombre => row['nombre'], :edad => row['edad'],
                      :comuna_id => row['comuna_id'], :telefono => row['telefono'],
                      :password => '123456', :password_confirmation => '123456'
end

(3...100).each do |x| 
  random_name = Faker::Name.name
  random_email = random_name.downcase.tr(" ", "") + "@gmail.com"
  random_age = (rand() * (50 - 18) + 18).floor
  random_comuna = (rand() * csv_comunas.length).ceil
  random_telefono = "+569" + String((rand() * 99999999).floor)
  random_descripcion = Faker::Lorem.sentence()
  user = User.create! :email => random_email, :nombre => random_name, :edad => random_age,
  :comuna_id => random_comuna, :telefono => random_telefono,
  :password => '123456', :password_confirmation => '123456',
  :descripcion => random_descripcion
end

# ----- Reviews -----
csv_reviews_text = File.read(Rails.root.join('lib', 'seeds', 'reviews.csv'))
csv_reviews = CSV.parse(csv_reviews_text, :headers => true, :encoding => 'utf-8')
csv_reviews.each do |row|
  review = Review.new
  review.calificacion = row['calificacion']
  review.comentario = row['comentario']
  review.user_id = row['user_id']
  review.local_id = row['local_id']
  review.save
end
(3...100).each do |x|
  random_calificacion = (rand() * 10).ceil
  random_comentario = Faker::Lorem.sentence()
  random_user_id = (rand() * 100).ceil
  random_local_id = (rand() * csv_locales.length).ceil()
  review = Review.new
  review.calificacion = random_calificacion
  review.comentario = random_comentario
  review.user_id = random_user_id
  review.local_id = random_local_id
  review.save
end
