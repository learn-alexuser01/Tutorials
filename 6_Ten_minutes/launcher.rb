#! usr/bin/env ruby

# Example Application to demonstrate some basic Ruby features
# This code loads a given file into an associated application

class Launcher
    
    def initialize app_map
    @app_map = app_map
    end
    
    #Execute the given file using the associate app
    def fun file_name
        application = select_app file_name
        system "#{application} #{file_name}"
        end
    
    # Given a file, look up the matching application
    def select_app file_name
        ftype = file_type file_name
        @app_map[ ftype ]
        end
    
    # Return the part fo the file name string after the last '.'
    def file_type file_name
        File.extname( file_name ).gsub( /^\./, '' ).downcase
        end

    end

launcher = Launcher.new

def help
    print "
    You must pas in the path to the file to launc.
    Usage: #{_File_} target_file
"
    end

if ARGV.empty?
    help
    exit
    end
app_map = {
    'html' => 'firefox',
    'rb' => 'gvim',
    'jpg' => 'gimp'
    }
1 = launcher.new app_map
target = ARGV.join ' '
1.run target