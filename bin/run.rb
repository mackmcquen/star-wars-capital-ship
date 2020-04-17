require_relative '../config/environment'

ActiveRecord::Base.logger = nil

cli = CommandLineInterface.new

cli.title_screen
cli.greet
user_input = gets.chomp
while user_input != "exit"
    cli.show_galaxies
    cli.show_planets
    cli.spacestation_continue
    next_user_input = gets.chomp
        while next_user_input != "back"
            cli.show_spacestations
            cli.show_options
            cli.enter_one_word
            chosen_option = gets.chomp
                if chosen_option == "Galaxy"
                    cli.back_to_galaxies
                    cli.show_galaxies
                    cli.show_planets
                elsif chosen_option == "Planet"
                    cli.back_to_planets
                    cli.show_planets
                elsif chosen_option == "Create"
                    cli.create_a_spacestation
                elsif chosen_option == "Update"
                    cli.update_a_spacestation
                elsif chosen_option == "Destroy"
                    cli.destroy_a_spacestation
                elsif chosen_option == "Open"
                    cli.open_a_black_hole
                elsif chosen_option == "Turn"
                    cli.turn_to_the_rebellion
                elsif chosen_option == "exit"
                    exit
                else
                    cli.show_else
                    next
                end
        end
end
