require "pathname"

class ScoobyDoo
    def self.where_are_you(cmd)
        if (cmd.include?(File::PATH_SEPARATOR))
            exe = Pathname.new(cmd).expand_path
            return (exe.executable? && !exe.directory?) ? exe : nil
        end

        exts = ENV["PATHEXT"] ? ENV["PATHEXT"].split(";") : [""]
        ENV["PATH"].split(File::PATH_SEPARATOR).each do |path|
            exts.each do |ext|
                exe = File.join(path, "#{cmd}#{ext}")
                if (File.executable?(exe) && !File.directory?(exe))
                    return exe
                end
            end
        end
        return nil
    end
end
