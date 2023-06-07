class LocomotiveEngineer
  
  def self.generate_list_of_wagons(*nums)
    return *nums
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    wagon_list = []
    before_nums = []
    is_first = true
    each_wagons_id.each do |wagon|
      unless is_first
        wagon_list.append(wagon)
      else
        if wagon == 1
          wagon_list.append(wagon)
          wagon_list = *wagon_list, *missing_wagons
          is_first=false
        else
          before_nums.append(wagon)
        end
      end
    end
    wagon_list += before_nums
    return wagon_list
  end

  def self.add_missing_stops(from_to, **missing_stops)
    stops = missing_stops.values
    from_to[:stops] = stops
    return from_to
  end

  def self.extend_route_information(route, more_route_information)
    return **route, **more_route_information
  end
end
