
# bundle on AI.
set -gx BUNDLE_GEMFILE "../ci/Gemfile"
set -gx PUPPET_VERSION "~> 6.0"
set -gx EDITOR=vim

# Openstack
os_env me

set -g fish_greeting

# Start ssh-agent
fish_ssh_agent

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

