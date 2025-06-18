if status is-interactive
    fastfetch
end

starship init fish | source

if test -x /opt/homebrew/bin/brew
    eval ("/opt/homebrew/bin/brew" shellenv)
end

set -gx HOMEBREW_PREFIX /opt/homebrew

set -gx PATH /opt/homebrew/opt/icu4c@76/bin $PATH
set -gx PATH /opt/homebrew/opt/icu4c@76/sbin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
set -gx DOTNET_ROOT $HOMEBREW_PREFIX/opt/dotnet/libexec

# —————————————————————————————————————————————————————————————
#  Automatic tmux on login
# —————————————————————————————————————————————————————————————

if type -q tmux
    # only start tmux if not already inside one
    if not set -q TMUX
        tmux
    end
end


abbr -a -- gitc 'git commit'
abbr -a -- gits 'git status -sb'
abbr -a -- gitl "git log --pretty=format:\"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\" --abbrev-commit"
abbr -a -- c clear



