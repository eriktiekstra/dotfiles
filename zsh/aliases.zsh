alias reload!='. ~/.zshrc'

alias cl='clear' # Good 'ol Clear Screen command
alias cls='cl' # Good 'ol Clear Screen command

alias home='cd ~/'
alias sites='cd ~/Sites/'

alias vhosts='sudo nano /etc/apache2/extra/httpd-vhosts.conf'
alias serve='python -m SimpleHTTPServer 8000'
alias myip='echo "External: $(curl -s http://ipecho.net/plain) \nInternal: $(ipconfig getifaddr en0)"'

