# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialty.create(name: "psicologia", institution: "UTEM" )
Preexistence.create(name: "enfermedad1", description: "a continuacion se muestra las caracteristias" )
user = User.create! :nombre => 'administrador', :email => 'a@admin.com', :password => '123456', :password_confirmation => '123456', :fecha_nacimiento => '1995-08-03', :direccion => 'calle falsa 123', :role => 'admin', :numero_contacto => '983551084' 