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
  names_jobs = {}
  i = 0 
  data.each do |season, info|
    while i < info.size
      names_jobs.store(info[i]["name"], info[i]["occupation"])
      i += 1
    end
  end
  ladies = data.map {|key, lady_info| lady_info.first[1]}
 
  names_jobs.select {|name, job| job == occupation}.keys[0]
binding.pry
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
