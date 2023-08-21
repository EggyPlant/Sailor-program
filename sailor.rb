require 'io/console'

# Function that only progresses program one line at a time with each key press
def continue_story                                                                                                               
  STDIN.getch                                                                                                              
  print "            \r"                                                                                                    
end 


def sing
    current_bottle = 99

    while current_bottle > 0
        sing_line(current_bottle)        
        continue_story
        current_bottle -= 1
    end   
end

def sing_line(current_bottle)
    line = "#{current_bottle} bottles of beer on the wall, #{current_bottle} bottles of beer! Take one down, pass it around #{(current_bottle - 1)} bottles of beer on the wall!"
    encode = line.chars
    chosen_index = 0
    altered_list = Hash.new
    i = 1


    case current_bottle
    when 66..100
        slur_words(current_bottle, encode, altered_list, (100 - current_bottle))
    when 65
        poem(1)
    when 36..64
        slur_words(current_bottle, encode, altered_list, (100 - current_bottle))
    when 35        
        poem(2)
    when 5..34
        slur_words(current_bottle, encode, altered_list, (100 - current_bottle))
    when 4
        puts ".."
    when 3
        puts "..."
    when 2
        puts "......"
    when 1
        poem(3)
    end
end


def slur_words(current_bottle, encode, altered_list, modifier)
    i = 1 
    chosen_index = 0

# i is how many characters that will be slurred in the final line
    while i < (modifier)
        i += 1
        chosen_char = (97 + rand(26)).chr
        chosen_index = rand(113)


# The rest of this is just making sure not to change a index that was already changed
# and that an actual letter from a - z is chosen
        until ('a'..'z').include?(encode[chosen_index]) || ('A'..'Z').include?(encode[chosen_index]) do 
            chosen_index = rand(113)
        end 

        unless altered_list[chosen_index] == true
            if ('a'..'z').include?(encode[chosen_index]) || ('A'..'Z').include?(encode[chosen_index])
                encode[chosen_index] = chosen_char
                altered_list[chosen_index] = true
            end
        end
    end
    puts encode.join
    sleep(0.25)
end



def poem(place)
# Story stuff
    case place
    when 1
        puts "."
        sleep(3)
        puts ".."
        sleep(3)
        puts "..."
        sleep(3)
        puts "In the drunken mosh pit of the bar when glass bottles and bodies are clubbed against other bodies and your eyes fail to remain open your mind rolls inside its skull and falls into the rocking rhythm of the ocean waves"
        sleep(3)
        puts "All the light is drained from this place"
        sleep(3)
        puts "The sea spray salts your lips and tongue and clears your lungs"
        sleep(3)
        puts "The rocking and rhythm of the waves is the one thing that keeps you sane and anchored and your attachment to it is the only reliable companion in a endless horizon of gray existance"
        sleep(3)
        puts "The feeling of solid land beneath your feet flees your mind faster everytime you come out to sea"
        sleep(3)
        puts "....."
        sleep(3)
    when 2

        puts "."
        sleep(3)
        puts ".."
        sleep(3)
        puts "..."
        sleep(3)
        puts "You drink yourself blind"
        sleep(3)
        puts "Your eyes can't discern objects from any other thing with everything existing on a single plane of matter"
        sleep(3)
        puts "The blinding darkness inside your cabins pitch black nothingness is a pure white sun bleaching your retinas"
        sleep(3)
        puts "You hear the breeze give life to the flow of tall grass and berry bushes around you yourself being at the epicenter of it like a giant ameoba"
        sleep(3)
        puts "Are you dreaming?"
        sleep(3)
        puts "You feel the grass on your body"
        sleep(3)
        puts "....."
        sleep(3)

    when 3
        sleep(3)
        puts "The warmth of the sun is becoming a little too hot now, tanning your skin."
        sleep(3)
        puts "The ground where you took your nap is mostly rock and the rest of the mountain is grass."
        sleep(3)
        puts "Looking over the rest of the land that rolls over the horizon you feel the wind that blows the thunderheads across the vast blue ocean sky"
        sleep(3)
        puts "You hear the mighty thunder and listen to what the gods have to say"
        sleep(3)
        puts "Time for you to head back"
        sleep(3)
        puts "You pack up your bag and clamber back to your car parked at the top of the trail"
        sleep(3)
        puts "Completely free"
        sleep(10)
    end

end


puts "Its night time and your looking for a boozing -- Anything to get your mind off work"
sleep(3)
puts "Drinking has become a hard habit for you now, even though you said you wouldn't let it get this far"
sleep(3)
puts "Laboring hard out at sea; to come to land just to drink; to prepare going back out at sea"
sleep(3)
puts "You find the bar you'll be drinking at tonight."
sleep(3)
puts "back again, in your old ways"
sleep(3)
puts "Inside, they're already singing"
puts "....."
sleep(3)
puts "press any key"
continue_story
sing()

# future reference =>
# when you get to the end of the story, lines 10 and less, start to shorten what they're saying, like as if the thought is wandering away, with the string getting shorter and shorter
# 10 => 10 bottles of beer on the wall, 10 bottles o
# 9 =>  9 bottles of beer on the wal
# 8 => 8 bottles of beer on th
# 7 => 7 bottl
# 6 => 6
# 5 => 5
# 4 => 4
# (all letters should be randomized still)



