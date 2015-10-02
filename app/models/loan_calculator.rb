class LoanCalculator
  def initialize(apr, years, principal)
    @apr = apr.to_f
    @years = years.to_i
    @principal = principal.to_f
  end

  def get_principal
    return @principal
  end

  def present_value
    return get_principal
  end

  def get_apr
    return @apr
  end

  def rate_per_period
    return get_apr / 100 / 12
  end

  def get_years
    return @years
  end

  def number_periods
    number_periods = get_years * 12
  end

  def monthly_payment
    return (rate_per_period*present_value)/(1-(1+rate_per_period)**(-number_periods))
  end
end
