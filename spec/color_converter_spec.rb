require 'spec_helper'

describe ColorConverter do
  context "#hex" do
    it "converts RGB to hexcolor" do
      ColorConverter.hex(0, 0, 0).should eq "#000000"
      ColorConverter.hex(210, 105, 30).should eq "#D2691E"
    end

    it "converts CMYK to hexcolor" do
      ColorConverter.hex(0, 50, 86, 18).should eq "#D2691E"
    end

    it "returns parameter if 1 value is entered" do
      ColorConverter.hex("#D2691E").should eq "#D2691E"
    end

    it "raises error if incorrect number of values is entered" do
      expect { ColorConverter.hex(0, 0, 0, 0, 0) }.to raise_error
    end

    it "expects proper values" do
      expect { ColorConverter.hex("hello", "world", "foobar", "baz") }.to raise_error
      expect { ColorConverter.hex("hello", "world", "foobar") }.to raise_error
    end
  end

  context "#rgb" do
    it "converts hexcolor to RGB" do
      ColorConverter.rgb("#D2691E").should eq [210, 105, 30]
    end

    it "converts CMYK to RGB" do
      ColorConverter.rgb(0, 50, 86, 18).should eq [210, 105, 30]
    end

    it "returns parameter if 3 values are entered" do
      ColorConverter.rgb(210, 105, 30).should eq [210, 105, 30]
    end

    it "raises error if incorrect number of values is entered" do
      expect { ColorConverter.rgb(0, 0) }.to raise_error
    end

    it "expects proper values" do
      expect { ColorConverter.rgb("hello", "world", "foobar", "baz") }.to raise_error
      expect { ColorConverter.rgb("hello") }.to raise_error
    end
  end

  context "#cmyk" do
    it "converts hexcolor to CMYK" do
      ColorConverter.cmyk("#D2691E").should eq [0, 50, 86, 18]
    end

    it "converts RGB to CMYK" do
      ColorConverter.cmyk(210, 105, 30).should eq [0, 50, 86, 18]
    end

    it "returns parameter if 4 values are entered" do
      ColorConverter.cmyk(0, 50, 86, 18).should eq [0, 50, 86, 18]
    end

    it "raises error if incorrect number of values is entered" do
      expect { ColorConverter.cmyk(0, 0, 0, 0, 0) }.to raise_error
    end

    it "expects proper values" do
      expect { ColorConverter.cmyk("hello", "world", "foobar") }.to raise_error
      expect { ColorConverter.cmyk("hello") }.to raise_error
    end
  end
end