# Check for secrets file

if test -f $HOME/.secrets.fish
    source $HOME/.secrets.fish
else
    echo "$HOME/.secrets.fish not found."
end

# Shell helpers

# size,show type,human readable
function l
    command ls -lFh $argv
end

# long list,show almost all,show type,human readable
function la
    command ls -lAFh $argv
end

# sorted by date,recursive,show type,human readable
function lr
    command ls -tRFh $argv
end

# long list,sorted by date,show type,human readable
function lt
    command ls -ltFh $argv
end

# dot files
function ldot
    command ls -ld .*
end

function lS
    command ls -1FSsh $argv
end
