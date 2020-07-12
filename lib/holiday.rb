require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decoration|
    decoration << "Balloons"
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter

      holiday.each{|holiday, supply| supplies << supply}
    end
  end
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday, supply|
      holiday_array = holiday.to_s.split("_")
      formatted_holiday_array = []
      holiday_array.map{|holiday| formatted_holiday_array << holiday.capitalize}
      formatted_holiday = formatted_holiday_array.join(" ")
      puts "  #{formatted_holiday}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      supplies.each do |element|
        if element == "BBQ"
          holiday_array << holiday
        end
      end
    end
  end
  return holiday_array
end
