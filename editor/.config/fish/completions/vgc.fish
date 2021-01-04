function __fish_vgc_complete_no_subcommand
    for i in (commandline -opc)
        if contains -- $i core infrastructure
            return 1
        end
    end
    return 0
end

complete -c vgc -f -n '__fish_vgc_complete_no_subcommand' -a core -d 'Core repository'
complete -c vgc -f -n '__fish_vgc_complete_no_subcommand' -a infrastructure -d 'Infrastructure repository'
