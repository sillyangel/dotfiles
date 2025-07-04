if status is-interactive
    function sudo_last
        sudo (history --max=1 | head -n1 | sed 's/^\s*[0-9]*\s*//')
    end

    alias !!=sudo_last

    starship init fish | source
end
