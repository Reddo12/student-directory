students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},  
  {name: "Norman Bates", cohort: :november}
]

def input_students
  puts "please enter the names of the students"
  puts"to finish, just hit return twice"
  #create an empty array
  students = []
  # get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
 puts "The students of Villains Academy"
 puts "-------------"
end

def print(students)
  students.each_with_index() do |student, index|
    indexplusone = index + 1
    puts "#{indexplusone}. #{student[:name]} (#{student[:cohort]} cohort)"
 end
end

def print_footer(students)
 puts "Overall, we have #{students.count} great students"
end
#nothing happens untl we call the methods

students = input_students
print_header
print(students)
print_footer(students)
