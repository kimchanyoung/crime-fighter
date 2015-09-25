class View

  def initialize()

  end

  def display(string)
    puts string
  end

  def welcome_message
    puts "Welcome to 'Crime'fighter!!!"
  end

  def username_input
    puts "Please enter a crimefighter name..."
  end

  def ask_for_location
    puts "Please provide your current location..."
  end

  def ask_for_incident
    puts "If so desired, please select the type of crime you would like to fight: "
  end

  def ask_for_radius
    puts "Please indicate the radius of how far you are willing to fight crime..."
  end

  def match_search_done
    puts "Here are the crimes in your selected area: "
  end

  def report_matches(incident)
    puts
    puts incident
  end

  def invalid_command
    puts "Invalid command"
  end

  def prompt_for_command
    puts "Please input a command: "
  end

  def show_batman
    puts <<-BATMAN
_ ~/~/~/~/~/~/\~~/~/
                                      _  _                \/__/_|/_/_/_|_/_/
                            _____*~~~  **  ~~~*_____             \____/
                         __* ___     |\__/|     ___ *__
                       _*  / 888~~\__(8OO8)__/~~888 \  *_
                     _*   /88888888888888888888888888\   *_
                     *   |8888888888888888888888888888|   *
                    /~*  \8888/~\88/~\8888/~\88/~\8888/  *~
                   /  ~*  \88/   \/   (88)   \/   \88/  *~
                  /    ~*  \/          \/          \/  *~
                 /       ~~*_                      _*~~/
                /            ~~~~~*___ ** ___*~~~~~  /
               /                      ~  ~         /
              /                                  /
             /                                 /
            /                                /
           /                    t__n__r__  /
          /                    | ####### |
         /            ___      | ####### |             ____i__           /
        /  _____p_____l_l____  | ####### |            | ooooo |         qp
i__p__ /  |  ##############  | | ####### |__l___xp____| ooooo |      |~~~~|
 oooo |_I_|  ##############  | | ####### |oo%Xoox%ooxo| ooooo |p__h__|##%#|
 oooo |ooo|  ##############  | | ####### |o%xo%%xoooo%| ooooo |      |#xx%|
 oooo |ooo|  ##############  | | ####### |o%ooxx%ooo%%| ooooo |######|x##%|
 oooo |ooo|  ##############  | | ####### |oo%%x%oo%xoo| ooooo |######|##%x|
 oooo |ooo|  ##############  | | ####### |%x%%oo%/oo%o| ooooo |######|/#%x|
 oooo |ooo|  ##############  | | ####### |%%x/oo/xx%xo| ooooo |######|#%x/|
 oooo |ooo|  ##############  | | ####### |xxooo%%/xo%o| ooooo |######|#^x#|
 oooo |ooo|  ##############  | | ####### |oox%%o/x%%ox| ooooo |~~~$~~|x##/|
 oooo |ooo|  ##############  | | ####### |x%oo%x/o%//x| ooooo |_KKKK_|#x/%|
 ooo~\|ooo|~\##############  | ~\####### |oox%xo%%oox%~\ooooo |_|~|~\|xx%/|
 ooo ||oHo| |####AAAA######  |h||##XX### |x%x%WWx%%/ox||ooDoo |_| |Y||xGGx|
 BATMAN
  end

end