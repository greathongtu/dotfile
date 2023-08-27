if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH /home/aaron/Downloads/clion-2023.2.1/bin $PATH
    
    set -xg https_proxy http://127.0.0.1:7890
    set -xg http_proxy http://127.0.0.1:7890
    set -xg all_proxy socks5://127.0.0.1:7891
end
