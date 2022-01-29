require_relative "data"

class App
  include Store 
    
  def initialize
    # @data = load_data
    @options = load_options
  end

  def start
    p "Welcome to Flashcards"
    option_selected = show_menu
    if load_questions(option_selected)
      result = show_questions
      show_result(result)
    end
  end

  def show_menu
    p "Choose an option"
    @options.each {|option| p "#{option[:id].to_s}. #{option[:title]}"}
    number_selected = gets.chomp.to_i
    option_selected = @options.find {|item| item[:id] === number_selected}
    title_selected = option_selected[:title]
    # p "You choose #{title_selected}"
    title_selected
  end

  def show_questions
    counter = 0
    @questions.each do |question|
      p question[:question]
      p "press any key to continue"
      gets.chomp
      p question[:answer]
      p "did you get the correct answer? (y/n)"
      answer = gets.chomp
      if answer === "y"
        counter += 1
      end
    end
    counter
  end

  def show_result(result)
    p "you get #{result}/#{@questions.count} correct answers"
  end
end

app = App.new
app.start