
# bundle on AI.
set -gx BUNDLE_GEMFILE "../ci/Gemfile"
set -gx PUPPET_VERSION '~> 7.0'
set -gx FACTER_GEM_VERSION '~> 4.0'
set -gx EDITOR vim

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR"/ssh-agent.socket

# Openstack
os_env me

set -g fish_greeting

# Start ssh-agent
#fish_ssh_agent

# Add puppet-agent bin path.
if test -d /opt/puppetlabs/bin
  set PATH $PATH /opt/puppetlabs/bin
end

# Sue
if test -d /usr/sue/bin
  set PATH /usr/sue/bin $PATH
end
#
if test -d {$HOME}/bin
  set PATH {$HOME}/bin $PATH
end


if test -f /etc/profile.d/mco.sh
  bass "source /etc/profile.d/mco.sh"
end

if test -f /usr/share/doc/find-the-command/ftc.fish
  source /usr/share/doc/find-the-command/ftc.fish
end

if test -f /usr/bin/rbenv
  status --is-interactive; and rbenv init - fish | source
end

# uses dircolors template
eval (dircolors -c ~/.dircolors/dircolors.256dark)

# Aliases
alias ls='ls --color=auto'


