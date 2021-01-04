function __fish_cdcs_complete_no_subcommand
    for i in (commandline -opc)
        if contains -- $i automasi core lighting-automation
            return 1
        end
    end
    return 0
end

complete -c cdcs -f -n '__fish_cdcs_complete_no_subcommand' -a automasi -d 'Automasi repository'
complete -c cdcs -f -n '__fish_cdcs_complete_no_subcommand' -a core -d 'Core repository'
complete -c cdcs -f -n '__fish_cdcs_complete_no_subcommand' -a lighting-automation -d 'Lighting Automation repository'
