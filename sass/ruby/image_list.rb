module Sass::Script::Functions

    def image_list(pattern)
        path = Compass.configuration.images_path
        files = Dir[File.join(path, pattern.value)].entries.sort

        files.map! { |x|
            Sass::Script::String.new(x.gsub("#{path}/", ""))
        }

        return Sass::Script::List.new(files, :comma)
    end

end
