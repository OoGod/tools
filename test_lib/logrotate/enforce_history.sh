enforce_history() {
trap 'traplogger $LINENO "$BASH_COMMAND" $?'  DEBUG
mkdir -p /var/log/history.d/
cat << 'EOF' > /etc/logrotate.d/history
/var/log/history.d/history {
    create 0666 root root
    monthly
    rotate 6
    create
    dateext
    compress
    minsize 1M
}
EOF
cat << 'EOF' > /etc/profile.d/history.sh
shopt -s histappend
HISTTIMEFORMAT='%F %T '
HISTSIZE="5000"
HISTFILESIZE=5000
PROMPT_COMMAND='(umask 000; msg=$(history 1 | { read x y; echo $y; }); echo [$(who am i | awk "{print \$(NF-2),\$(NF-1),\$NF}")] [$(whoami)@`pwd`]" $msg" >>/var/log/history.d/history)'
export HISTTIMEFORMAT HISTSIZE HISTFILESIZE PROMPT_COMMAND
EOF
}
#enforce_history
enforce_history
