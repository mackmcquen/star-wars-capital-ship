require 'pry'
require 'date'
require_relative 'Galaxy'
require_relative 'Planet'
require_relative 'Spacestation'
Galaxy.connection
Planet.connection
Spacestation.connection

class CommandLineInterface
    
    def title_screen
        puts "\e[H\e[2J"
        sleep 0.5
        
        puts "       \033[34m     ====================     \033[0m"
        puts "\033[34m         =====\033[0m       |        \033[34m=====  \033[0m"
        puts "\033[34m       ====\033[0m          |           \033[34m====\033[0m"
        puts "\033[34m     |||\033[0m             \033[31mo\033[0m              \033[34m|||\033[0m"
        puts "\033[34m    |||\033[0m              \033[31mv\033[0m                \033[34m|||\033[0m"
        puts "\033[34m   |||\033[0m                          \033[34m      |||\033[0m"
        puts "\033[34m  <|||\033[0m--\033[31mo>\033[0m \033[36mSTAR WARS CAPITAL SHIP\033[0m \033[31m<o\033[0m--\033[34m|||>\033[0m"
        puts "\033[34m   |||\033[0m                          \033[34m      |||\033[0m"
        puts "\033[34m    |||\033[0m              \033[31m^\033[0m                \033[34m|||\033[0m"
        puts "\033[34m     |||\033[0m             \033[31mo\033[0m              \033[34m|||\033[0m"
        puts "\033[34m       ====\033[0m          |           \033[34m====\033[0m"
        puts "\033[34m         =====\033[0m       |        \033[34m=====  \033[0m"
        puts "\033[34m            ====================     \033[0m"
        puts ""
        sleep 0.5
        puts " An Active Record + Ruby CLI program by \033[35mMack McQuen\033[0m"
        puts ""
        sleep 0.5
        printf "\033[36m>>:* Press Enter to start the program, otherwise exit: \033[0m"
        prompt = STDIN.gets.chomp
        exit unless prompt == ''
    end

    def greet
        puts "\e[H\e[2J"
        sleep 0.5
        current_time = DateTime.now
        star_destroyer = <<~DOC
        .            .                     .
                _        .                          .            (
               (_)        .       .                                     .
  .        ____.--^.
   .      /:  /    |                               +           .         .
         /:  `--=--'   .                                                .
LS      /: __[\==`-.___          *           .
       /__|\ _~~~~~~   ~~--..__            .             .
       \   \|::::|-----.....___|~--.                                 .
        \ _\_~~~~~-----:|:::______//---...___
    .   [\  \  __  --     \       ~  \_      ~~~===------==-...____
        [============================================================-
        /         __/__   --  /__    --       /____....----''''~~~~      .
  *    /  /   ==           ____....=---='''~~~~ .
      /____....--=-''':~~~~                      .                .
.             ~--~         
                      .                                   .           .
                           .                      .             +
        .     +              .                                       <=>
                                                 .                .      .
   .                 *                 .                *                ` -
        DOC
        puts star_destroyer
        sleep 0.5
        puts "\033[32m...ENGINES OPEPRATIONAL...\033[0m"
        sleep 0.2
        puts "\033[32m...HYPERDRIVE STANDBY...\033[0m"
        sleep 0.2
        puts "\033[32m...TRACTOR BEAM STANDBY...\033[0m"
        puts ""
        sleep 0.5
        puts "\033[32mv\033[0m     CURRENT CREW COUNT    \033[32mv\033[0m"
        puts "\033[32m|\033[0m        \033[32m37000\033[0m TOTAL        \033[32m|\033[0m"
        puts "\033[32m|\033[0m        \033[32m9235\033[0m OFFICERS      \033[32m|\033[0m"
        puts "\033[32m|\033[0m        \033[32m27850\033[0m ENLISTED     \033[32m|\033[0m"
        puts "\033[32m^\033[0m                           \033[32m^\033[0m"
        puts ""
        sleep 0.5
        puts "\033[32m>>: CURRENT DATE AND TIME: \033[0m#{current_time.strftime "%d/%m/%Y %H:%M"}"
        puts ""
        sleep 0.5
        printf "\033[32m>>: ENTER OFFICER NAME: \033[0m"
        name = gets.chomp
        puts "\e[H\e[2J"
        sleep 0.5
        puts "\033[32m>>: Welcome \033[0m\033[31mFleet Admiral " + name + "\033[0m\033[32m.\033[0m"
        puts ""
        sleep 0.8
        printf "\033[32m>>: Press Enter to continue, or type 'exit': \033[0m"
    end

    def show_galaxies
        puts "\e[H\e[2J"
        sleep 0.5
        puts "\033[31m>>:* Capital-Ship-command of Imperial I-Class Star Destroyer <018>, Fleet 0419 :ACTIVATED:\033[0m"
        sleep 0.8
        puts galaxy_all = Galaxy.all
        puts .to_s
        sleep 0.5
        printf "\033[31m>>:* Enter a Galaxy name to initiate Hyperdrives and enter Hyperspace: \033[0m"
        @galaxy_name = gets.chomp
        puts "\e[H\e[2J"
        sleep 0.5
        @bespin_system = <<~DOC
        .      .      .      .      .      .      .      .      .      .      .
        .   B E S P I N   S Y S T E M   .       .       .       .       .       .
           .        .        .        .        .        .        .        .        .
             .         .         .        _......____._        .         .
           .          .          . ..--'"" .           """"""---...          .
                           _...--""        ................       `-.              .
        Velser's Ring   .-'        ...:'::::;:::%:.::::::_;;:...     `-.
                \    .-'       ..::::'''''   _...---'"""":::+;_::.      `.      .
          .      \ .' .    ..::::'      _.-""               :::)::.H'gaard`.
                 .\     ..;:::'     _.-'         .             f::'::    o  _ BESPIN
                /  \| .:::%'  .  .-"                   Oron .-.  ::;;:.   /" "x
          .   .'  ""::.::'    .-"     _.--'"""-.           (   )  ::.::  |_.-' |
             .'    ::;:'    .'     .-" .d@@b.   \    .    . `-'   ::%::   \_ _/    .
            .'    :,::'    /   . _'    8@@@@8   j      .-'       :::::      " o
            | .  :.%:' .  j     (_)    `@@@P'  .'   .-"         ::.::    .  f  Dru-
            |    ::::     ( Miser  -..____...-'  .-"          .::::'       /   donna
        .   |    `:`::    `.                ..--'        .  .::'::   .    /
            j     `:::::    `-._____...---""             .::%:::'       .'  .
             \      ::.:%..             .       .    ...:,::::'       .'
         .    \       `:::`:..                ....::::.::::'       .-'          .
               \    .   ``:::%::`::.......:::::%::.::::''       .-'
              . `.        . ``::::::%::::.::;;:::::'''      _.-'          .
          .       `-..     .    .   ````'''''         . _.-'     .          .
                 .    ""--...____    .   ______......--' .         .         .
          .        .        .    """"""""     .        .        .        .        .
         .       .       .       .       .       .       .       .       .    LS
             .      .      .      .      .      .      .      .      .      .      .
        DOC
        puts @bespin_system
        puts ""
        sleep 0.5
        puts "\033[32m>>:* You are in " + @galaxy_name + ".\033[0m"
    end

    def show_planets
        sleep 0.8
        puts current_galaxy_planets = Galaxy.find_by(name: @galaxy_name).planets
        puts .to_s
        sleep 0.5
        printf "\033[31m>>:* Enter a planet name to enter Warpspeed: \033[0m"
        @planet_name = gets.chomp
        puts "\e[H\e[2J"
        sleep 0.5
        @planet_surface = <<~DOC
         .    |  
              |    `b                 .            .            .
      .       #             .                   .         .                   .
              #     . .     __ ..-- ---:::::::::::---.___         . .
          .  .#      __..::::::..::::::::::::::::::::..::""-- ...__         .
      ....,,o###==-""...::::........::++||#||#+#|+++::::..:::::::::::-._
      .     _`%". ........:::.......:::+|||#||||||++:..::::::::::::+++|++-._    .
          -'..   . .......::::......:::+++||##||||||..::...:::::+::::+++|||||-.
      .-'. ... ........::::::::.....:::::+++||###|+|+:.::.:++++::++++++||#|#|||#.
        ..  . .::.:::::::::::::::.::.:::::++|||###|||+:+++++++|:+++++||####|#|#|||
      .......:+::.:::::::::::::::.:::::::++++||||##+|||++++|#|##++||||######|##|||
      :..:.:::|+:::::::::::::::::::::::+++++||||||#:++|#|||####|#|||LS#####|+|##||
      :::::::::::::::::::::++++:::::::::+||+|||||||||######@#@#|########@@#||#||||
      :::..:.:..:::+:::::+++||++++||::+++||||||||||+||#||||||||||################|
        DOC
        puts @planet_surface
        puts ""
        sleep 0.5
        puts "\033[32m>>:* You are orbiting " + @planet_name + ".\033[0m"
    end

    def spacestation_continue
        sleep 0.8
        puts ""
        printf "\033[31m>>:* Press Enter to continue, or type 'back': \033[0m"
    end

    def show_spacestations
        sleep 0.8
        puts current_planet_spacestations = Planet.find_by(name: @planet_name).spacestations
        puts .to_s
    end

    def show_options
        sleep 0.2
        puts "\033[31m>\033[0mBack to \033[31m>|\033[0mGalaxy\033[31m|\033[0m Map\033[31m<\033[0m"
        sleep 0.2
        puts "\033[31m>\033[0mBack to \033[31m>|\033[0mPlanet\033[31m|\033[0m Map\033[31m<\033[0m"
        sleep 0.2
        puts "\033[31m>|\033[0mCreate\033[31m|\033[0m a Space Station on " + @planet_name + "\033[31m<\033[0m"
        sleep 0.2
        puts "\033[31m>|\033[0mUpdate\033[31m|\033[0m a Space Station on " + @planet_name + "\033[31m<\033[0m"
        sleep 0.2
        puts "\033[31m>|\033[0mDestroy\033[31m|\033[0m a Space Station on " + @planet_name + "\033[31m<\033[0m"
        sleep 0.2
        puts "\033[31m>|\033[0mOpen\033[31m|\033[0m a Black Hole on " + @planet_name + "\033[31m<\033[0m"
        sleep 0.2
        puts "\033[31m>|\033[0mTurn\033[31m|\033[0m to the Rebellion\033[31m<\033[0m"
        puts ""
        sleep 0.2
        puts "\033[31m>|\033[0mexit\033[31m|<\033[0m"
        puts ""
    end

    def enter_one_word
        sleep 0.5
        printf "\033[31m>>:* Enter a one-word option: \033[0m"
    end

    def back_to_galaxies
        puts "\e[H\e[2J"
        sleep 0.5
    end

    def back_to_planets
        puts "\e[H\e[2J"
        sleep 0.5
        puts @bespin_system
        sleep 0.5
        puts ""
        puts "\033[32m>>:* You are in " + @galaxy_name + ".\033[0m"
        puts ""
    end

    def create_a_spacestation
        planet_name = @planet_name
        puts ""
        sleep 0.5
        printf "\033[31m>>:* Name your new Space Station: \033[0m"
        new_spacestation_name = gets.chomp
        current_spacestation = Spacestation.create(name: new_spacestation_name)
        current_planet = Planet.find_by(name: planet_name)
        current_planet.spacestations << current_spacestation
        current_spacestation
        puts ""
        sleep 0.5
        puts "\033[32m>>:* The Space Station '" + new_spacestation_name + "' has been created.\033[0m"
        puts ""
    end

    # def update_a_spacestation
    #     puts ""
    #     sleep 0.5
    #     printf "\033[31m>>:* Enter the name of the Space Station you would like to change: \033[0m"
    #     next_next_user_input = gets.chomp
    #     while next_next_user_input != "exit"
    #         selected_spacestation = gets.chomp
    #         puts updated_spacestation = Spacestation.find_by(name: selected_spacestation)
    #         if selected_spacestation == updated_spacestation
    #             puts ""
    #             sleep 0.5
    #             printf "\033[31m>>:* Enter " + selected_spacestation + "'s new name: \033[0m"
    #             updated_spacestation_name = gets.chomp
    #             puts Spacestation.find_by(name: selected_spacestation).update(name: updated_spacestation_name)
    #             puts ""
    #             sleep 0.5
    #             puts "\033[32m>>:* The Space Station's name has been updated to: '" + updated_spacestation_name + "'\033[0m"
    #             puts ""
    #         else
    #             printf "\033[31m>>:* Enter the name of the Space Station you would like to change: \033[0m"
    #             selected_spacestation = gets.chomp
    #         end
    #     end
    # end

    def update_a_spacestation
        puts ""
        sleep 0.5
        printf "\033[31m>>:* Enter the name of the Space Station you would like to change: \033[0m"
            selected_spacestation = gets.chomp
            puts updated_spacestation = Spacestation.find_by(name: selected_spacestation)
                puts ""
                sleep 0.5
                printf "\033[31m>>:* Enter " + selected_spacestation + "'s new name: \033[0m"
                updated_spacestation_name = gets.chomp
                Spacestation.find_by(name: selected_spacestation).update(name: updated_spacestation_name)
                puts ""
                sleep 0.5
                puts "\033[32m>>:* The Space Station's name has been updated to: '" + updated_spacestation_name + "'\033[0m"
                puts ""
    end

    def destroy_a_spacestation
        puts ""
        sleep 0.5
        printf "\033[31m>>:* Enter the name of the Space Station you would like to destroy: \033[0m"
        destroy_spacestation_name = gets.chomp
        destroyed_spacestation = Spacestation.find_by(name: destroy_spacestation_name).destroy
        puts ""
        sleep 0.5
        puts "\033[32m>>:* The Space Station '" + destroy_spacestation_name + "' has been destroyed.\033[0m"
        puts ""
    end

    def open_a_black_hole
        puts "\e[H\e[2J"
        sleep 0.8
        puts galaxy_all = Galaxy.all
        puts .to_s
        puts ""
        sleep 0.5
        printf "\033[31m>>:* Enter the name of the galaxy you would like to connect " + @planet_name + " to: \033[0m"
        blackhole_galaxy_name = gets.chomp
        current_planet = Planet.find_by(name: @planet_name)
        blackhole_galaxy = Galaxy.find_by(name: blackhole_galaxy_name).planets
        blackhole_galaxy << current_planet
        puts ""
        puts "\033[32m>>:* " + @planet_name + " has been linked via Black Hole to the Galaxy " + blackhole_galaxy_name + "\033[0m"
    end

    def turn_to_the_rebellion
        puts "\e[H\e[2J"
        sleep 1
        puts "      ..."
        sleep 1
        puts "      ..."
        sleep 1
        puts "      ..."
        sleep 2
        puts "      You hear footsteps..."
        sleep 2
        puts "      ..."
        sleep 1
        puts "      ..."
        sleep 2
        puts "      The sound of regulated breathing..."
        puts ""
        sleep 3
        vader = <<~DOC
                    ..-..,'".-     BM\dF. jM@'    !MMM.&^'jjjM#*..`.              !*m.F.    `.....
                    -`.'^-".^.   ._'-".   ``       `"#.# .]MF.      _.  __-gg..      jMg.   ......
                    '......._   j#M' jMf       jg_jm..-`  .Mf_ ja   "`  .`  `^" ,_ 4g."@!.  ...,.,
                    ',3&^jCgf ._`"`"'.         .` """!.   .`^^       .....        .""LTgJf.  =/<.,
                    _@#MMQK##-@"^                         ..                         .'QK_. .!$AGz
                    MM&&#0$#yF.                          !-M.    .gmMM@!               ."q. ..K#MD
                    ZM#ZM#$.                             q4M.    ..__,,yg_.              ^\. ..M0#
                    A0NWM@.                    jggp.    .,m*      .#MMMMM#'..              '  ."M0
                    BMM$@"                     !MM#'..   -*'      ."QMMMM#`..                 ..^$
                    BMMM'                      .^@#.'`   _     ,yy___````.                     . `
                    MMMP                        ...  j.  1.L   .""9*qwwwJ,.                     ..
                    @@@.                   .     ...P`,  .F`            .`.                     ..
                    0T`                   .P. . F`      :"~~-  ._.e.,wyyw..,,....
                    yg.                             '  _g0M0g. .-'`'^`Q$_
                    Mf                                .jMMMMML    .`-"0M#
                    @.                              . ."MMMM@^        ."".
                    f                              .    -.            ...
                    .                             .                 ._  ...
                                                .           .        .    ..
                                        ..  -'          .,              ..,   ..,.
                                            `.          . ..*. . _     ,   .p_ .-,'jb.
                    _                     jgg, -'-+..--!.!!!` !' .~.      _0MM/.-.-/@.   .yyygggMM
                    M0gyy__________.      ^0M'                            "MM^  ...".     `^MMMMMM
                    MMMMMMMMMMMMMM'.                                                   ..        .
        DOC
        puts vader
        puts ""
        puts ""
        sleep 1
        puts "         'You are foolish to believe that I had not forseen this.'"
        sleep 1.5
        puts "                        'This is the end, Admiral.'"
        puts ""
        puts ""
        sleep 3
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 0.1
        puts "   You are being force choked!"
        sleep 1
        puts "\033[31m   You are dead."
        sleep 3
        exit
    end

    def show_else
        @planet_surface = <<~DOC
        .    |  
             |    `b                 .            .            .
     .       #             .                   .         .                   .
             #     . .     __ ..-- ---:::::::::::---.___         . .
         .  .#      __..::::::..::::::::::::::::::::..::""-- ...__         .
     ....,,o###==-""...::::........::++||#||#+#|+++::::..:::::::::::-._
     .     _`%". ........:::.......:::+|||#||||||++:..::::::::::::+++|++-._    .
         -'..   . .......::::......:::+++||##||||||..::...:::::+::::+++|||||-.
     .-'. ... ........::::::::.....:::::+++||###|+|+:.::.:++++::++++++||#|#|||#.
       ..  . .::.:::::::::::::::.::.:::::++|||###|||+:+++++++|:+++++||####|#|#|||
     .......:+::.:::::::::::::::.:::::::++++||||##+|||++++|#|##++||||######|##|||
     :..:.:::|+:::::::::::::::::::::::+++++||||||#:++|#|||####|#|||LS#####|+|##||
     :::::::::::::::::::::++++:::::::::+||+|||||||||######@#@#|########@@#||#||||
     :::..:.:..:::+:::::+++||++++||::+++||||||||||+||#||||||||||################|
       DOC
        puts "\e[H\e[2J"
        sleep 0.5
        puts @planet_surface
        sleep 0.5
        puts ""
        puts "\033[32m>>:* You are orbiting " + @planet_name + ".\033[0m"
    end
end
