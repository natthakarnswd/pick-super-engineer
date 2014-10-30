def random_pick 
  inputs = File.open("engineerlist.txt") #open file input
  eng_list = Array.new() #create new array name eng_list

  for x in inputs 
    eng_list.push(x) #set each  data of input to array name eng_list
  end
  name = eng_list.shuffle.sample
  puts name #print one name of engineerlist by random
  pick_featureA(name)
  
end

def pick_featureA(list)
    engineers_name = list
    if  engineers_name.include?(' ')
        engineers_name.gsub!(/ / , '.') 
    end	
    puts engineers_name
end

random_pick()

