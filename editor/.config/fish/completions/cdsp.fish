function __fish_cdsp_complete_no_subcommand
    for i in (commandline -opc)
        if contains -- $i barrier-controller camera-listener camera-logger camera-middleware cms
            return 1
        end
    end
    return 0
end

complete -c cdsp -f -n '__fish_cdsp_complete_no_subcommand' -a barrier-controller -d 'Barrier Controller repository'
complete -c cdsp -f -n '__fish_cdsp_complete_no_subcommand' -a camera-listener -d 'Camera Listener repository'
complete -c cdsp -f -n '__fish_cdsp_complete_no_subcommand' -a camera-logger -d 'Camera Logger repository'
complete -c cdsp -f -n '__fish_cdsp_complete_no_subcommand' -a camera-middleware -d 'Camera Middleware repository'
complete -c cdsp -f -n '__fish_cdsp_complete_no_subcommand' -a cms -d 'CMS repository'
