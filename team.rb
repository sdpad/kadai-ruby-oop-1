class Team
  attr_accessor :name
  attr_accessor :win
  attr_accessor :lose
  attr_accessor :draw
  
  def initialize(name:, win:, lose:, draw:)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  def calc_win_rate
    return self.win.to_f / (self.win + self.lose).to_f
  end
  
  def show_team_result
    return "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate}です。"
  end  

end

team1 = Team.new(name: "Giants", win: 67, lose: 45, draw: 8)
team2 = Team.new(name: "Tigers", win: 60, lose: 53, draw: 7)
team3 = Team.new(name: "Dragons", win: 60, lose: 55, draw: 5)
team4 = Team.new(name: "BayStars", win: 56, lose: 58, draw: 6)
team5 = Team.new(name: "Carp", win: 52, lose: 56, draw: 12)
team6 = Team.new(name: "Swallows", win: 41, lose: 69, draw: 10)

teams = [team1,team2,team3,team4,team5,team6]

puts "2020年のプロ野球セントラルリーグの成績"

teams.each do |team|
  puts team.show_team_result
end