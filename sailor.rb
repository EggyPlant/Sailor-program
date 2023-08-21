# 99 bottles of Beer

# This program sings 99 Bottles of Beer, one bottle at a time
# Each bottle that they drink, they become more inebriated
# progressively, their words become slurred and disorderly
# until they are no longer elligable


# 99 bottles of beer on the wall, 99 bottles of beer!
# Take one down, pass it around, 98 bottles of beer on the wall!
# ==>
# 99 wottles so aear on fah kall, 99 lotales of beer!
# laee pne kown, ... 98 alwnfg os beer etc cetera

# Punctuation, word separation, and numbers will be the same, 


# 2 int variables  ==> current_bottle, next_bottle
# end condition, no more bottles left to drink
# need to wait on user input to move to the next line <= gets.something
# most of the work will be in string manipulation 
# I can use my previous ceasar cipher logic and make something 


# tiers of drunkness every ten bottles
# need to make some code cleaner then a million if tier 1 then..
# something more modular 

#STORY
# you walk in
# ... they begin to sing
# bottle 50 => poem
# bottle 1 => .....
# bottle 0 => you wake up, having dreamt of something
# ==> next poem
# end


require 'io/console'

def continue_story                                                                                                               
#   print "press any key"                                                                                                    
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
    # p poem(current_bottle)
end

def sing_line(current_bottle)
    line = "#{current_bottle} bottles of beer on the wall, #{current_bottle} bottles of beer! Take one down, pass it around #{(current_bottle - 1)} bottles of beer on the wall!"
    encode = line.chars
    chosen_index = 0
    altered_list = Hash.new
    i = 1

    # slur_words(current_bottle, encode, altered_list, 0)

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


    while i < (modifier)
        i += 1
        chosen_char = (97 + rand(26)).chr
        chosen_index = rand(113)



        until ('a'..'z').include?(encode[chosen_index]) || ('A'..'Z').include?(encode[chosen_index]) do 
            # keep in mind altered_list needs to be accounted for
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
# sing_line(1, 2, 3)


# Things to put for line 50
#   why do we drink
#  what is the general story about?
#   
#   Back again, in your old ways
#   You sustain a bitter cycle
#   work at sea, to come to land to drink, to go back to work at sea
#   First part, you have just come back from sea, to go find a drink to drown yourself
#   Second part, you find yourself woken up at sea 
#   third part, dreaming of release which is ambiguous if you die
#   but fourth part, completely free, you break the cycle and can leave 

# can be structered differently
# to progress better instead of line 50, line 2, line 1
# scattered throughout maybe every 25
# line 60 

# You were on the mountain the whole time
# Slowly coming to the realization of being free
# so the rocking of the boat and being in the dreamy place is really you asleep on the mountain
# the singing is like a howling, the gray is the thunderheads coming closer
# The motion of the boat is like a comfort => the comfort of sleeping on a mountain
# comfort => soothing of nature mountain => healing

# future reference =>
# when you get to the end of the story, lines 10 and less, start to shorten what they're saying, like as if the thought is wandering away, with the string getting shorter and shorter




