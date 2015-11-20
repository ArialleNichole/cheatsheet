# main menu
# case statment for main menu options
# command line menu
# ide menu
# search menu

user_input = 0

@menus = {
	main: {
		'1' => {text: 'Command Line'}, 
		'2' => {text: 'Sublime'}, 
		'3' => {text: 'Search'},
		'4' => {text: 'Exit Cheatsheet'}
	},
	command_line_menu: {
		'1' => {text: 'Copy - cp - cp path/to/file path/to/destination'}, 
		'2' => {text: 'Move - mv - mv path/to/file path/to/destination'}, 
		'3' => {text: 'Make Directory - mkdir - mkdir path/name/of/directory'}, 
		'4' => {text: 'Main Menu'}
	},
	sublime_menu: {
		'1' => {text: 'ctrl+s'},
		'2' => {text: 'option+arrow key'},
		'3' => {text: 'command+arrow key'},
		'4' => {text: 'Main Menu'}
	},
	search_menu: {
		'1' => {text: 'Search'},
		'2' => {text: 'Main Menu'}
	}
}

def main_menu
	puts "******* My Cheatsheet ******"
	@menus[:main].each {|num, text| puts "#{num}: #{text[:text]}"}
	puts "Make a choice: "
	user_input = gets.strip.to_i
	if user_input == 1
		command_line_menu
	elsif user_input == 2
		sublime_menu
	elsif user_input == 3
		search_menu
	end
end

def command_line_menu
	puts "*** Command Line ***"
	@menus[:command_line_menu].each {|num, text| puts "#{num}: #{text[:text]}"}
	puts "Make a selection: "
	input = gets.strip.to_i
	if input == 1
		puts `man cp`
			command_line_menu
	elsif input == 2
		puts `man mv`
			command_line_menu
	elsif input == 3
		puts `man mkdir`
			command_line_menu
	elsif input == 4
		main_menu
	end
end

def sublime_menu
	puts "*** Sublime Menu ***"
	@menus[:sublime_menu].each {|num, text| puts "#{num}: #{text[:text]}"}
	puts "Make a choice:"
	choice = gets.strip.to_i
	if choice == 1
		puts "1. ctrl+s is the shortcut for Save."
			sublime_menu
	elsif choice == 2
		puts "2. option+arrow key is the shortcut for moving one word over."
			sublime_menu
	elsif choice == 3
		puts "3. command+arrow key is the shortcut to get to the end or beginning of a line."
			sublime_menu
	elsif choice == 4
		main_menu
	end
end	

def search_menu
	puts "*** Search Menu ***"
	@menus[:search_menu].each {|num, text| puts "#{num}: #{text[:text]}"}
	puts "Make a choice: "
		user_input = gets.strip.to_i
		if user_input == 1
			puts "Enter search subject: "
				user_input = gets.strip
				puts `man #{user_input}`
			search_menu
		elsif user_input == 2
			main_menu
	end
end

main_menu