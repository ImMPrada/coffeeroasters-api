# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

PreferencePresentation.destroy_all
Presentation.destroy_all
Unit.destroy_all
Preference.destroy_all
Type.destroy_all
Frecuency.destroy_all

grames_unit = Unit.create(used_symbol: 'g', description: 'a grame is 1 grames', grames: 1.00)
capsules_unit = Unit.create(used_symbol: 'nessclassic', description: 'a capsule of classic nespresso, is 15.5 grames', grames: 15.5)

mass250 = Presentation.create(title: '250g', description: 'Perfect for the solo drinker. Yields about 12 delicious cups.',
                              price: 10, amount: 250, unit: grames_unit)
mass500 = Presentation.create(title: '500g', description: 'Perfect for the solo drinker. Yields about 12 delicious cups.',
                               price: 18, amount: 500, unit: grames_unit)
mass1000 = Presentation.create(title: '1000g', description: 'Perfect for offices and events. Yields about 90 delightful cups.', 
                                price: 36, amount: 1000, unit: grames_unit)

caps15 = Presentation.create(title: '15 capsules', description: 'Perfect for the solo drinker. Yields about 15 delicious cups.',
                             price: 10, amount: 15, unit: capsules_unit)
caps50 = Presentation.create(title: '30 capusles', description: 'Perfect for the solo drinker. Yields about 30 delicious cups.',
                             price: 20, amount: 30, unit: capsules_unit)
caps90 = Presentation.create(title: '90 capsules', description: 'Perfect for offices and events. Yields about 90 delightful cups.',
                             price: 50, amount: 90, unit: capsules_unit)

pref_capsules = Preference.create(title:'Capsule', description:'Compatible with Nespresso systems and similar brewers')
pref_filter = Preference.create(title:'Filter', description:'For pour over or drip methods like Aeropress, Chemex, and V60')
pref_espresso = Preference.create(title:'Espresso', description:'Dense and finely ground beans for an intense, flavorful experience')

PreferencePresentation.create(preference: pref_capsules, presentation: caps15)
PreferencePresentation.create(preference: pref_capsules, presentation: caps50)
PreferencePresentation.create(preference: pref_capsules, presentation: caps90)
PreferencePresentation.create(preference: pref_filter, presentation: mass250)
PreferencePresentation.create(preference: pref_filter, presentation: mass500)
PreferencePresentation.create(preference: pref_filter, presentation: mass1000)
PreferencePresentation.create(preference: pref_espresso, presentation: mass250)
PreferencePresentation.create(preference: pref_espresso, presentation: mass500)
PreferencePresentation.create(preference: pref_espresso, presentation: mass1000)

Type.create(title: 'Single Origin', description: 'Distinct, high quality coffee from a specific family-owned farm')
Type.create(title: 'Decaf', description: 'Just like regular coffee, except the caffeine has been removed')
Type.create(title: 'Blended', description: 'Combination of two or three dark roasted beans of organic coffees')

Frecuency.create(title: 'Every month', description: '$12.00 per shipment. Includes free priority shipping.', monthly_amount: 1, base_price: 12.00)
Frecuency.create(title: 'Every 2 weeks', description: '$9.60 per shipment. Includes free priority shipping.', monthly_amount: 2, base_price: 9.60)
Frecuency.create(title: 'Every week', description: '$7.20 per shipment. Includes free first-class shipping.', monthly_amount: 4, base_price: 7.20)
