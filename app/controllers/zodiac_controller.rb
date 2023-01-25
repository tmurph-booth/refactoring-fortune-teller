class ZodiacController < ApplicationController
  def signName
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(params.fetch("userSign").to_sym)
    @zodiacName = this_zodiac.fetch(:name)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Zodiac.lucky_numbers

    render({ :template => "dynamicSign.html.erb" })
  end
end
