
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

if test -f /etc/profile.d/mco.sh
  bass "source /etc/profile.d/mco.sh"
end


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/steve/google-cloud-sdk/path.fish.inc' ]; . '/home/steve/google-cloud-sdk/path.fish.inc'; end

status --is-interactive; and rbenv init - fish | source

