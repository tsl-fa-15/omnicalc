class CalculationsController < ApplicationController
    def word_count_form
        render 'word_count_form'
    end

    def word_count
        @word_counter = WordCounter.new(params[:user_text], params[:user_word])

        # ========================================================
        # Your code goes below.
        # The text the user input is in the string @text.
        # The special word the user input is in the string @special_word.
        # ========================================================
    end

    def loan_payment_form
        render 'loan_payment_form'
    end

    def loan_payment
        @loan_calculator = LoanCalculator.new(params[:annual_percentage_rate], params[:number_of_years], params[:principal_value])
        # =====================================================
        # Your code goes below.
        # You can use this formula for reference:
        # http://www.financeformulas.net/Loan_Payment_Formula.html
        # =====================================================
    end

    def time_between_form
        render 'time_between_form'
    end

    def time_between
        @starting = Chronic.parse(params[:starting_time])
        @ending = Chronic.parse(params[:ending_time])

        # =====================================================
        # Your code goes below.
        # The start time is in the Time @starting.
        # The end time is in the Time @ending.
        # The number of years the user input is in the integer @years.
        # The principal value the user input is in the decimal @principal.
        # =====================================================

        @seconds = "Replace this string with your answer"
        @minutes = "Replace this string with your answer"
        @hours = "Replace this string with your answer"
        @days = "Replace this string with your answer"
        @weeks = "Replace this string with your answer"
        @months = "Replace this string with your answer"
        @years = "Replace this string with your answer"
        render 'time_between'
    end

    def descriptive_statistics_form
        render 'descriptive_statistics_form'
    end

    def descriptive_statistics
        @stat = Stat.new(params[:list_of_numbers])
        # =====================================================
        # Your code goes below.
        # The numbers the user input are in the array @numbers.
        # =====================================================

        render  'descriptive_statistics'
    end
end
