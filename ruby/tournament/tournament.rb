=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament
  def self.tally(input)
    result = "Team                           | MP |  W |  D |  L |  P\n"
    plays = input.split(/\n+/)
    team = {};
    plays.each do |play|
      index = 0
      arr = play.split(';')
      
      team[arr[0]] = [0, 0, 0, 0, 0] unless team.has_key?(arr[0])
      
      team[arr[1]] = [0, 0, 0, 0, 0] unless team.has_key?(arr[1])
      
      team[arr[0]][0] += 1
      team[arr[1]][0] += 1
      
      if arr[2].to_s == 'win'
        team[arr[0]][1] += 1
        team[arr[0]][4] += 3
        team[arr[1]][3] += 1
      elsif arr[2].to_s == 'loss'
        team[arr[1]][1] += 1
        team[arr[1]][4] += 3
        team[arr[0]][3] += 1
      else
        team[arr[0]][2] += 1
        team[arr[0]][4] += 1
        team[arr[1]][2] += 1
        team[arr[1]][4] += 1
      end
    end
    team.keys.sort
    team = team.sort do |v1,v2| 
      if v1[1][4]>v2[1][4]
        -1
      elsif v1[1][4]<v2[1][4]
        1
      else
        v1[0]<=>v2[0]
      end
    end
    
    team.each do |key, value|
      team_name = ""
      (0..30).each do |idx|
        if key[idx]
          team_name += key[idx]
        else
          team_name += " "
        end
      end
      result += "#{team_name}|  #{value[0]} |  #{value[1]} |  #{value[2]} |  #{value[3]} |  #{value[4]}\n"
    end
    result
  end
end
