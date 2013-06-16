require "color_converter/version"

module ColorConverter

  def self.hex (*values)
    raise "Incorrect values." unless correct_values? (values)
    return values[0] if values.count == 1
    values.each { |v| raise "Expecting Fixnum." unless v.class == Fixnum }

    hex_array = values
    hex_array = rgb(values[0], values[1], values[2], values[3]) if values.count == 4
    "#" + hex_array.map do |v|
      "0123456789ABCDEF"[(v-v%16)/16] + "0123456789ABCDEF"[v%16]
    end.join
  end

  def self.rgb (*values)
    raise "Incorrect values" unless correct_values? (values)
    return values if values.count == 3

    if values.count == 1
      hex_to_rgb(values[0])
    elsif values.count == 4
      values.each { |v| raise "Expecting Fixnum." unless v.class == Fixnum }
      cmyk_to_rgb(values[0], values[1], values[2], values[3])
    end
  end

  def self.cmyk (*values)
    raise "Incorrect values." unless correct_values? (values)
    return values if values.count == 4

    cmyk_array = values
    cmyk_array = rgb(values[0]) if values.count == 1
    cmyk_array.each { |v| raise "Expecting Fixnum." unless v.class == Fixnum }

    rgb_to_cmyk(cmyk_array[0], cmyk_array[1], cmyk_array[2])
  end

  def self.hex_to_rgb (hex)
    remove_hex(hex).scan(/../).map do |v|
      begin
        Integer(v, 16)
      rescue Exception => e
        raise "Invalid hexcolor."
      end
    end
  end

  def self.cmyk_to_rgb (c, m, y, k)
    c = c * 0.01
    m = m * 0.01
    y = y * 0.01
    k = k * 0.01
    r = 255 * (1-c) * (1-k)
    g = 255 * (1-m) * (1-k)
    b = 255 * (1-y) * (1-k)
    [r.ceil, g.ceil, b.ceil]
  end

  def self.rgb_to_cmyk (r, g, b)
    k = [r, g, b].map{|v| 1-(v.to_f/255)}.min
    r = r.to_f / 255
    g = g.to_f / 255
    b = b.to_f / 255
    c = (1-r-k) / (1-k)
    m = (1-g-k) / (1-k)
    y = (1-b-k) / (1-k)
    [c, m, y, k].map do |v|
      (v * 100).round
    end
  end

  def self.remove_hex (hex)
    hex[0] == '#' ? hex[1..7] : hex
  end

  def self.correct_values? (values)
    [1, 3, 4].include? values.count
  end
end
