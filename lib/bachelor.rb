require 'pry'
def get_first_name_of_season_winner(data, season)
  ladies_with_status = {}
  ladies = data[season].map {|lady_info| lady_info.first[1]}
  count = 0
  data[season].map do |array_of_hashes|
    while count < array_of_hashes.size
      ladies_with_status.store(ladies[count], data[season][count]["status"])
      count += 1
    end
  end
  winner = ladies_with_status.select {|name, status| status == "Winner"}.keys[0]
  first_name = winner.split(" ").first
# lady_fullname = data["season 16"][i].values[0] 
end

def get_contestant_name(data, occupation)
  contestant = nil
  data.map do |season,array| 
    array.map do |info| 
      
      if occupation == info["occupation"] 
        contestant = info["name"] 
      end
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  num_from_town = []
  data.map do |season, array|
    array.map do |info|
      if hometown == info["hometown"]
        num_from_town << info["name"]
      end
    end
  end
  num_from_town.size
end

def get_occupation(data, hometown)
  town_jobs = []
  data.map do |season, array|
    array.map do |info|
      if hometown == info["hometown"]
        town_jobs << info["occupation"]
      end
    end
  end
  town_jobs.first
end

def get_average_age_for_season(data, season)
  # code here
end
