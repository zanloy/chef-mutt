case node[:platform_family]
when 'archlinux'
  default[:mutt][:package] = 'extra/mutt'
when 'debian'
  default[:mutt][:package] = 'mutt-patched'
else
  default[:mutt][:package] = 'mutt'
end

default[:mutt][:config_file] = '/etc/Muttrc'
default[:mutt][:options] = {
  alias_file: '~/.mutt/muttrc',
  certificate_file: '~/.mutt/certificates',
  date_format: '!%a, %b %d, %Y at %I:%M:%S%p %Z',
  delete: 'ask-yes',
  folder: '~/mail',
  history_file: '~/.mutt/history',
  index_format: '%4C %Z %{%b %d} %-15.15L (%4l) %s',
  mbox: '~/mail',
  mbox_type: 'mbox',
  sidebar: false,
}
