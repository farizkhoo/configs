function __fish_codegc_complete_no_subcommand
    for i in (commandline -opc)
        if contains -- $i core infrastructure
            return 1
        end
    end
    return 0
end

complete -c codegc -f -n '__fish_codegc_complete_no_subcommand' -a core -d 'Core repository'
complete -c codegc -f -n '__fish_codegc_complete_no_subcommand' -a infrastructure -d 'Infrastructure repository'
