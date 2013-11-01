# File: fraccion_spec.rb

require "lib/fraccion.rb"

describe Fraccion do

    before :each do
        @frac = Fraccion.new(1,2)
    end

    it "Debe existir un numerador" do
        @frac.num.should eq(1)
    end

    it "Debe existir un denominador" do
        @frac.den.should eq(2)
    end

    it "Debe de estar en su forma reducida" do
        frac2 = Fraccion.new(3,9)
        frac2.num.should eq(1)
        frac2.den.should eq(3)
    end

    it "Se debe invocar al metodo num() para obtener el numerador" do
        @frac.respond_to?("num").should be_true
    end

    it "Se debe invocar al metodo denom() para obtener el denominador" do
        @frac.respond_to?("den").should be_true
    end

    it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
        @frac.to_s.should eq("1/2")
    end

    it "Se debe mostar por la consola la fraccion en formato flotante" do
        @frac.to_float.should eq(1/2)
    end

    it "Se debe comparar si dos fracciones son iguales con ==" do
        frac2 = Fraccion.new(2,4)
        @frac == frac2
    end

    it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
        frac2 = Fraccion.new(-3,5)
        frac3 = Fraccion.new(3,5)
        frac2.abs.should == frac3
    end

    it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
        frac2 = Fraccion.new(2,1)
        @frac.reciprocal.should == frac2
    end

    it "Se debe calcular el opuesto de una fraccion con -" do
        frac2 = Fraccion.new(-1,2)
        (-@frac).should == frac2
    end

    it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
        frac2 = Fraccion.new(1,3)
        frac3 = Fraccion.new(5,3)
        frac4 = Fraccion.new(2,1)
        (frac2 + frac3).should == frac4
    end

    it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
        frac2 = Fraccion.new(4,3)
        frac3 = Fraccion.new(2,3)
        frac4 = Fraccion.new(2,3)
        (frac2 - frac3).should == frac4
    end

    it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
        frac2 = Fraccion.new(2,5)
        frac3 = Fraccion.new(3,2)
        frac4 = Fraccion.new(3,5)
        (frac2 * frac3).should == frac4
    end

    it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
        frac2 = Fraccion.new(5,2)
        frac3 = Fraccion.new(3,2)
        frac4 = Fraccion.new(5,3)
        (frac2 / frac3).should == frac4
    end

    it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
        frac2 = Fraccion.new(5,1)
        frac3 = Fraccion.new(3,1)
        (frac2 % frac3).should eq(2)
    end

    it "Se debe de poder comprobar si una fraccion es menor que otra" do
        frac2 = Fraccion.new(2,1)
        (@frac < frac2).should be_true
    end

    it "Se debe de poder comprobar si una fraccion es mayor que otra" do
        frac2 = Fraccion.new(2,1)
        (@frac > frac2).should be_false
    end

    it "Se debe de poder comprobar si una fraccion es menor o igual que otra" do
        frac2 = Fraccion.new(2,1)
        frac3 = Fraccion.new(2,4)
        (@frac <= frac2).should be_true
        (@frac <= frac3).should be_true
    end

    it "Se debe de poder comprobar si una fraccion es mayor o igual que otra" do
        frac2 = Fraccion.new(2,1)
        frac3 = Fraccion.new(2,4)
        (@frac >= frac2).should be_false
        (@frac >= frac3).should be_true
    end
end
