class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def homepage
    render({ :template => "rps_templates/homepage.html.erb", :layout => "layouts/wrapper.html.erb" })
  end

  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end
    render({ :template => "rps_templates/user_rock.html.erb", :layout => "layouts/wrapper.html.erb" })
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tie"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    end
    render({ :template => "rps_templates/user_paper.html.erb", :layout => "layouts/wrapper.html.erb" })
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    elsif @computer_move == "scissors"
      @outcome = "tied"
    end

    render({ :template => "rps_templates/user_scissors.html.erb", :layout => "layouts/wrapper.html.erb" })
  end
end
