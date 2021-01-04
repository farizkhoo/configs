function __fish_codecs_complete_no_subcommand
    for i in (commandline -opc)
        if contains -- $i automasi core lighting-automation
            return 1
        end
    end
    return 0
end

complete -c codecs -f -n '__fish_codecs_complete_no_subcommand' -a automasi -d 'Automasi repository'
complete -c codecs -f -n '__fish_codecs_complete_no_subcommand' -a core -d 'Core repository'
complete -c codecs -f -n '__fish_codecs_complete_no_subcommand' -a lighting-automation -d 'Lighting Automation repository'
