# File: fraccion_spec.rb

require "lib/fraccion.rb"

class Fraccion
    attr_accessor :num, :den

    def initialize(num,den)
        comun = mcd(num,den)
        @num = num/comun
        @den = den/comun
    end

    def mcd(x,y)
        y == 0 ? x : mcd(y, x % y)
    end

    def mcm(x,y)
        (x * y)/mcd(x,y)
    end

    def to_s
        "#{@num}/#{@den}"
    end

    def to_float
        @num/@den
    end

    def == (f)
        ((self.num == f.num) && (self.den == f.den))
    end

    def abs
        Fraccion.new(@num.abs, @den)
    end

    def reciprocal
        Fraccion.new(@den,@num)
    end

    def -@
        Fraccion.new(-@num,@den)
    end

    def + (f)
        comun = mcm(self.den, f.den)
        Fraccion.new(comun/self.den * self.num + comun/f.den * f.num, comun)
    end

    def - (f)
        comun = mcm(self.den, f.den)
        Fraccion.new(comun/self.den * self.num - comun/f.den * f.num, comun)
    end 

    def * (f)
        Fraccion.new(self.num * f.num, self.den * f.den)
    end

    def / (f)
        Fraccion.new(self.num * f.den, self.den * f.num)
    end

    def % (f)
        return ((self.num * f.den) % (self.den * f.num))
    end

    def < (f)
        (self.num * f.den) < (self.den * f.num)
    end

    def > (f)
        (self.num * f.den) > (self.den * f.num)
    end

    def <= (f)
        (self.num * f.den) <= (self.den * f.num)
    end

    def >= (f)
        (self.num * f.den) >= (self.den * f.num)
    end
















end