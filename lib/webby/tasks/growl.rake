
unless Webby::Main::Generator::WINDOWS

task :growl do
  Logging::Logger['Webby'].add_appenders(Logging::Appenders::Growl.new(
    "Webby",
    :layout => Logging::Layouts::Pattern.new(:pattern => "%5l - Webby\000%m"),
    :coalesce => true,
    :separator => "\000"
  ))
end

end  # unless WINDOWS

# EOF