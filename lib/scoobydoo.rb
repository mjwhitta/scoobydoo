require "pathname"

class ScoobyDoo
    @@cache = Hash.new

    def self.where_are_you(cmd)
        return nil if (cmd.nil? || cmd.empty?)
        return @@cache[cmd] if (@@cache.has_key?(cmd))

        if (cmd.include?(File::SEPARATOR))
            exe = Pathname.new(cmd).expand_path
            return (exe.executable? && !exe.directory?) ? exe : nil
        end

        exts = ENV["PATHEXT"] ? ENV["PATHEXT"].split(";") : [""]
        ENV["PATH"].split(File::PATH_SEPARATOR).each do |path|
            exts.each do |ext|
                exe = File.join(path, "#{cmd}#{ext}")
                if (File.executable?(exe) && !File.directory?(exe))
                    @@cache[cmd] = exe
                    return exe
                end
            end
        end

        return nil
    end
end
