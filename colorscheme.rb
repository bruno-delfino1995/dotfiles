#!/usr/bin/env ruby

require "chroma"
require "safe_yaml/load"
require "yaml"

def build_template_data(file_path:)
  yml = SafeYAML.load(File.read(file_path))
  bases = %w(00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F)

  data = {
    "scheme-name" => yml["scheme"],
    "scheme-author" => yml["author"],
  }

  bases.each do |b|
    base_key = "base#{b}"
    base_color = yml[base_key]

    data["#{base_key}-hex"] = base_color

    data["#{base_key}-hex-r"] = base_color[0, 2]
    data["#{base_key}-hex-g"] = base_color[2, 2]
    data["#{base_key}-hex-b"] = base_color[4, 2]

    # Turn hex color into an array of [r, g, b]
    rgb = base_color.paint.to_rgb.scan(/\d+/)

    data["#{base_key}-rgb-r"] = rgb[0]
    data["#{base_key}-rgb-g"] = rgb[1]
    data["#{base_key}-rgb-b"] = rgb[2]

    data["#{base_key}-dec-r"] = rgb[0].to_i / 255.0
    data["#{base_key}-dec-g"] = rgb[1].to_i / 255.0
    data["#{base_key}-dec-b"] = rgb[2].to_i / 255.0
  end

  puts(data.to_yaml)
end

build_template_data(file_path: ARGV[0])

