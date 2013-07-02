require "pchip/version"
require 'pchip/array'

module Pchip
  # only have Fritsch-Carlson implemented right now
  # yi + y'i(x-xi) + ci(x-xi)^2 + di(x-xi)^3
  # ?? yi = -( y'i(x-xi) + ci(x-xi)^2 + di(x-xi)^3 )
  # ci = 3si-2y'i-y'_(i+1)  /  x_(i+1)-xi
  # di = y'i+y'_(i+1) - 2si  /  (x_(i+1) - xi)^2
  # si = y_(i+1)-yi  /  x_(i+1) - xi
  #
  # FC = 
  # if sign d_(i-1) = sign di then y'i = 3(h_(i-1) + hi)( ( 2hi+h_(i-1)/d_(i-1) ) + ( hi+2h_i(-1) / di ) )^-1
  # else 0
  #
  # See:
  # http://math.stackexchange.com/questions/4082/equation-of-a-curve-given-3-points-and-additional-constant-requirements#4104
  # http://math.stackexchange.com/questions/45218/implementation-of-monotone-cubic-interpolation
  def self.pchip(xs,ys,new_ys, slope_method=:fc)

  end
end
