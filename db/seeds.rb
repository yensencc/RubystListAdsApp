# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

community_category = Category.where(name: 'community').first_or_create(name: 'community')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
services_category = Category.where(name: 'services').first_or_create(name: 'services')
for_sale_category = Category.where(name: 'for sale').first_or_create(name: 'for sale')

Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)
Subcategory.where(name: 'general', category_id: community_category.id).first_or_create(name: 'general', category_id: community_category.id)
Subcategory.where(name: 'news', category_id: community_category.id).first_or_create(name: 'news', category_id: community_category.id)
Subcategory.where(name: 'musicians', category_id: community_category.id).first_or_create(name: 'musicians', category_id: community_category.id)
Subcategory.where(name: 'pets', category_id: community_category.id).first_or_create(name: 'pets', category_id: community_category.id)

Subcategory.where(name: 'apts/housing', category_id: housing_category.id).first_or_create(name: 'apts/housing', category_id: housing_category.id)
Subcategory.where(name: 'housing swap', category_id: housing_category.id).first_or_create(name: 'housing swap', category_id: housing_category.id)
Subcategory.where(name: 'housing wanted', category_id: housing_category.id).first_or_create(name: 'housing wanted', category_id: housing_category.id)
Subcategory.where(name: 'office/commercial', category_id: housing_category.id).first_or_create(name: 'office/commercial', category_id: housing_category.id)
Subcategory.where(name: 'parking/storage', category_id: housing_category.id).first_or_create(name: 'parking/storage', category_id: housing_category.id)
Subcategory.where(name: 'rooms/shared', category_id: housing_category.id).first_or_create(name: 'rooms/shared', category_id: housing_category.id)
Subcategory.where(name: 'vacation rentals', category_id: housing_category.id).first_or_create(name: 'vacation rentals', category_id: housing_category.id)

Subcategory.where(name: 'accounting&finance', category_id: jobs_category.id).first_or_create(name: 'accounting&finance', category_id: jobs_category.id)
Subcategory.where(name: 'administrative', category_id: jobs_category.id).first_or_create(name: 'administrative', category_id: jobs_category.id)
Subcategory.where(name: 'business/management', category_id: jobs_category.id).first_or_create(name: 'business/management', category_id: jobs_category.id)
Subcategory.where(name: 'customer service', category_id: jobs_category.id).first_or_create(name: 'customer service', category_id: jobs_category.id)
Subcategory.where(name: 'education', category_id: jobs_category.id).first_or_create(name: 'education', category_id: jobs_category.id)
Subcategory.where(name: 'general label', category_id: jobs_category.id).first_or_create(name: 'general label', category_id: jobs_category.id)
Subcategory.where(name: 'human resources', category_id: jobs_category.id).first_or_create(name: 'human resources', category_id: jobs_category.id)
Subcategory.where(name: 'software development', category_id: jobs_category.id).first_or_create(name: 'software development', category_id: jobs_category.id)
Subcategory.where(name: 'engineering', category_id: jobs_category.id).first_or_create(name: 'engineering', category_id: jobs_category.id)
Subcategory.where(name: 'marketing', category_id: jobs_category.id).first_or_create(name: 'marketing', category_id: jobs_category.id)
Subcategory.where(name: 'sciences', category_id: jobs_category.id).first_or_create(name: 'sciences', category_id: jobs_category.id)

Subcategory.where(name: 'strictly platonic', category_id: personals_category.id).first_or_create(name: 'strictly platonic', category_id: personals_category.id)
Subcategory.where(name: 'woman seeking women', category_id: personals_category.id).first_or_create(name: 'woman seeking women', category_id: personals_category.id)
Subcategory.where(name: 'women seeking men', category_id: personals_category.id).first_or_create(name: 'women seeking men', category_id: personals_category.id)
Subcategory.where(name: 'men seeking women', category_id: personals_category.id).first_or_create(name: 'men seeking women', category_id: personals_category.id)
Subcategory.where(name: 'men seeking men', category_id: personals_category.id).first_or_create(name: 'men seeking men', category_id: personals_category.id)

Subcategory.where(name: 'automotive', category_id: services_category.id).first_or_create(name: 'automotive', category_id: services_category.id)
Subcategory.where(name: 'beauty', category_id: services_category.id).first_or_create(name: 'beauty', category_id: services_category.id)
Subcategory.where(name: 'legal', category_id: services_category.id).first_or_create(name: 'legal', category_id: services_category.id)
Subcategory.where(name: 'household', category_id: services_category.id).first_or_create(name: 'household', category_id: services_category.id)
Subcategory.where(name: 'legal', category_id: services_category.id).first_or_create(name: 'legal', category_id: services_category.id)
Subcategory.where(name: 'lessons', category_id: services_category.id).first_or_create(name: 'lessons', category_id: services_category.id)

Subcategory.where(name: 'antiques', category_id: for_sale_category.id).first_or_create(name: 'antiques', category_id: for_sale_category.id)
Subcategory.where(name: 'applications', category_id: for_sale_category.id).first_or_create(name: 'applications', category_id: for_sale_category.id)
Subcategory.where(name: 'arts&crafts', category_id: for_sale_category.id).first_or_create(name: 'arts&crafts', category_id: for_sale_category.id)
Subcategory.where(name: 'bikes', category_id: for_sale_category.id).first_or_create(name: 'bikes', category_id: for_sale_category.id)
Subcategory.where(name: 'boats', category_id: for_sale_category.id).first_or_create(name: 'boats', category_id: for_sale_category.id)
Subcategory.where(name: 'cars', category_id: for_sale_category.id).first_or_create(name: 'cars', category_id: for_sale_category.id)
Subcategory.where(name: 'electronics', category_id: for_sale_category.id).first_or_create(name: 'electronics', category_id: for_sale_category.id)