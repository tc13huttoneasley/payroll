# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create the Schedules and Employees from our sample spreadsheet data
#schedules = Schedule.create!([
#                {:code => "IIN-W", :description => "Intern internal weekly", :period => "WEEKLY", :factor => 1, :rate => 12.5}, 
#                {:code => "PIN-S", :description => "Programmer internal semi-monthly", :period => "SEMI-M", :factor => 1, :rate => 2000}, 
#                {:code => "CIN-M", :description => "Consultant internal monthly", :period => "MONTHLY", :factor => 1.0765, :rate => 6000}])
                
#employees = Employee.create!([
#                {:employee_type => "JUNIOR", :full_name => "Junior Programmer", :status => "Single", :exemptions => 0, :additional => 5},
#                {:employee_type => "SENIOR", :full_name => "Senior Programmer", :status => "Married", :exemptions => 2, :additional => 0},
#                {:employee_type => "BOSS", :full_name => "Head Consultant", :status => "Married", :exemptions => 4, :additional => 0}])

# Create data for the IRS tax rate tables                
rates =  Rate.create!([
                {:period => "weekly", :status => "single", :bracket => 0, :base => 0, :rate => 0},
                {:period => "weekly", :status => "single", :bracket => 42, :base => 0, :rate => 0.1},
                {:period => "weekly", :status => "single", :bracket => 214, :base => 17.2, :rate => 0.15},
                {:period => "weekly", :status => "single", :bracket => 739, :base => 95.95, :rate => 0.25},
                {:period => "weekly", :status => "single", :bracket => 1732, :base => 344.2, :rate => 0.28},
                {:period => "weekly", :status => "single", :bracket => 3566, :base => 857.72, :rate => 0.33},
                {:period => "weekly", :status => "single", :bracket => 7703, :base => 2222.93, :rate => 0.35},
                {:period => "weekly", :status => "single", :bracket => 7735, :base => 2234.13, :rate => 0.396},
                {:period => "weekly", :status => "married", :bracket => 0, :base => 0, :rate => 0},
                {:period => "weekly", :status => "married", :bracket => 160, :base => 0, :rate => 0.1},
                {:period => "weekly", :status => "married", :bracket => 503, :base => 34.3, :rate => 0.15},
                {:period => "weekly", :status => "married", :bracket => 1554, :base => 191.95, :rate => 0.25},
                {:period => "weekly", :status => "married", :bracket => 2975, :base => 547.2, :rate => 0.28},
                {:period => "weekly", :status => "married", :bracket => 4449, :base => 959.92, :rate => 0.33},
                {:period => "weekly", :status => "married", :bracket => 7820, :base => 2072.35, :rate => 0.35},
                {:period => "weekly", :status => "married", :bracket => 8813, :base => 2419.9, :rate => 0.396},
                {:period => "bi-weekly", :status => "single", :bracket => 0, :base => 0, :rate => 0},
                {:period => "bi-weekly", :status => "single", :bracket => 85, :base => 0, :rate => 0.1},
                {:period => "bi-weekly", :status => "single", :bracket => 428, :base => 34.3, :rate => 0.15},
                {:period => "bi-weekly", :status => "single", :bracket => 1479, :base => 191.95, :rate => 0.25},
                {:period => "bi-weekly", :status => "single", :bracket => 3463, :base => 687.95, :rate => 0.28},
                {:period => "bi-weekly", :status => "single", :bracket => 7133, :base => 1715.55, :rate => 0.33},
                {:period => "bi-weekly", :status => "single", :bracket => 15406, :base => 4445.64, :rate => 0.35},
                {:period => "bi-weekly", :status => "single", :bracket => 15469, :base => 4467.69, :rate => 0.396},
                {:period => "bi-weekly", :status => "married", :bracket => 0, :base => 0, :rate => 0},
                {:period => "bi-weekly", :status => "married", :bracket => 319, :base => 0, :rate => 0.1},
                {:period => "bi-weekly", :status => "married", :bracket => 1006, :base => 68.7, :rate => 0.15},
                {:period => "bi-weekly", :status => "married", :bracket => 3108, :base => 384, :rate => 0.25},
                {:period => "bi-weekly", :status => "married", :bracket => 5950, :base => 1094.5, :rate => 0.28},
                {:period => "bi-weekly", :status => "married", :bracket => 8898, :base => 1919.94, :rate => 0.33},
                {:period => "bi-weekly", :status => "married", :bracket => 15640, :base => 4144.8, :rate => 0.35},
                {:period => "bi-weekly", :status => "married", :bracket => 17627, :base => 4840.25, :rate => 0.396},
                {:period => "semi-monthly", :status => "single", :bracket => 0, :base => 0, :rate => 0},
                {:period => "semi-monthly", :status => "single", :bracket => 92, :base => 0, :rate => 0.1},
                {:period => "semi-monthly", :status => "single", :bracket => 464, :base => 37.2, :rate => 0.15},
                {:period => "semi-monthly", :status => "single", :bracket => 1602, :base => 207.90, :rate => 0.25},
                {:period => "semi-monthly", :status => "single", :bracket => 3752, :base => 745.4, :rate => 0.28},
                {:period => "semi-monthly", :status => "single", :bracket => 7727, :base => 1858.4, :rate => 0.33},
                {:period => "semi-monthly", :status => "single", :bracket => 16690, :base => 4816.19, :rate => 0.35},
                {:period => "semi-monthly", :status => "single", :bracket => 16758, :base => 4839.99, :rate => 0.396},
                {:period => "semi-monthly", :status => "married", :bracket => 0, :base => 0, :rate => 0},
                {:period => "semi-monthly", :status => "married", :bracket => 346, :base => 0, :rate => 0.1},
                {:period => "semi-monthly", :status => "married", :bracket => 1090, :base => 74.4, :rate => 0.15},
                {:period => "semi-monthly", :status => "married", :bracket => 3367, :base => 415.95, :rate => 0.25},
                {:period => "semi-monthly", :status => "married", :bracket => 6446, :base => 1185.7, :rate => 0.28},
                {:period => "semi-monthly", :status => "married", :bracket => 9640, :base => 2080.02, :rate => 0.33},
                {:period => "semi-monthly", :status => "married", :bracket => 16944, :base => 4490.34, :rate => 0.35},
                {:period => "semi-monthly", :status => "married", :bracket => 19096, :base => 5243.54, :rate => 0.396},
                {:period => "monthly", :status => "single", :bracket => 0, :base => 0, :rate => 0},
                {:period => "monthly", :status => "single", :bracket => 183, :base => 0, :rate => 0.1},
                {:period => "monthly", :status => "single", :bracket => 927, :base => 74.4, :rate => 0.15},
                {:period => "monthly", :status => "single", :bracket => 3204, :base => 415.95, :rate => 0.25},
                {:period => "monthly", :status => "single", :bracket => 7504, :base => 1490.95, :rate => 0.28},
                {:period => "monthly", :status => "single", :bracket => 15454, :base => 3716.95, :rate => 0.33},
                {:period => "monthly", :status => "single", :bracket => 33379, :base => 9632.2, :rate => 0.35},
                {:period => "monthly", :status => "single", :bracket => 33517, :base => 9680.5, :rate => 0.396},
                {:period => "monthly", :status => "married", :bracket => 0, :base => 0, :rate => 0},
                {:period => "monthly", :status => "married", :bracket => 692, :base => 0, :rate => 0.1},
                {:period => "monthly", :status => "married", :bracket => 2179, :base => 148.7, :rate => 0.15},
                {:period => "monthly", :status => "married", :bracket => 6733, :base => 831.8, :rate => 0.25},
                {:period => "monthly", :status => "married", :bracket => 12892, :base => 2371.55, :rate => 0.28},
                {:period => "monthly", :status => "married", :bracket => 19279, :base => 4159.91, :rate => 0.33},
                {:period => "monthly", :status => "married", :bracket => 33888, :base => 8980.88, :rate => 0.35},
                {:period => "monthly", :status => "married", :bracket => 38192, :base => 10487.28, :rate => 0.396}
])