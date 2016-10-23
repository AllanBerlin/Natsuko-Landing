module Sass::Script::Functions

    def basename(file, suffix = nil)
        if suffix.nil?
            name = File.basename(file.value);
        else
            name = File.basename(file.value, suffix.value);
        end

        return Sass::Script::String.new(name)
    end

end
