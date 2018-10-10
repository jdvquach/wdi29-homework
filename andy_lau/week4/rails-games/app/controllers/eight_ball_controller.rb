class EightBallController < ApplicationController

  def magic

  end

  def fortune
    @question = params[:question].to_s

    responses = [
     "It is certain.",
     "It is decidedly so.",
     "Without a doubt.",
     "Yes - definitely.",
     "You may rely on it.",

     "As I see it, yes.",
     "Most likely.",
     "Outlook good.",
     "Yes.",
     "Signs point to yes.",

     "Reply hazy, try again",
     "Ask again later.",
     "Better not tell you now.",
     "Cannot predict now.",
     "Concentrate and ask again.",

      "Don't count on it.",
      "My reply is no.",
      "My sources say no.",
      "Outlook not so good.",
      "Very doubtful.",
    ]

    @responses = responses.sample

    @result =
    case
    when (@question.include? "?") then @responses
      else
        "ASK A QUESTION PLEASE"
      end
    end
end
