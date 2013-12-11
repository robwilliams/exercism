class Year < Struct.new(:year)

  def leap?
    case year
    when divides_by[400] then true
    when divides_by[100] then false
    when divides_by[4]   then true
    else
      false
    end
  end

  private
  def divides_by
    -> by, year { year % by == 0 }.curry
  end
end
