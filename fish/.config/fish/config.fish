if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH $HOME/go/bin $PATH

    set -xg https_proxy http://127.0.0.1:7890
    set -xg http_proxy http://127.0.0.1:7890
    set -xg all_proxy socks5://127.0.0.1:7891

    alias v='nvim'
    alias lg='lazyvim'

    function fish_greeting
        echo Stand up Soldier! Time is (set_color yellow; date +%T; set_color normal)
    end
end
