# Public: Installs Vagrant 1.2.7
#
# Usage:
#
#   include vagrant
class vagrant($version = '1.2.7') {

  $urlsForVersion = {
    '1.3.0' => 'http://files.vagrantup.com/packages/0224c6232394680971a69d94dd55a7436888c4cb/Vagrant-1.3.0.dmg',
    '1.2.7' => 'http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/Vagrant-1.2.7.dmg',
    '1.2.6' => 'http://files.vagrantup.com/packages/22b76517d6ccd4ef232a4b4ecbaa276aff8037b8/Vagrant-1.2.6.dmg',
    '1.2.5' => 'http://files.vagrantup.com/packages/ec2305a9a636ba8001902cecb835a00e71a83e45/Vagrant-1.2.5.dmg',
    '1.2.4' => 'http://files.vagrantup.com/packages/0219bb87725aac28a97c0e924c310cc97831fd9d/Vagrant-1.2.4.dmg',
    '1.2.3' => 'http://files.vagrantup.com/packages/95d308caaecd139b8f62e41e7add0ec3f8ae3bd1/Vagrant-1.2.3.dmg',
    '1.2.2' => 'http://files.vagrantup.com/packages/7e400d00a3c5a0fdf2809c8b5001a035415a607b/Vagrant-1.2.2.dmg',
    '1.2.1' => 'http://files.vagrantup.com/packages/a7853fe7b7f08dbedbc934eb9230d33be6bf746f/Vagrant-1.2.1.dmg',
    '1.2.0' => 'http://files.vagrantup.com/packages/f5ece47c510e5a632adb69701b78cb6dcbe03713/Vagrant-1.2.0.dmg',
    '1.1.5' => 'http://files.vagrantup.com/packages/64e360814c3ad960d810456add977fd4c7d47ce6/Vagrant.dmg',
    '1.1.4' => 'http://files.vagrantup.com/packages/87613ec9392d4660ffcb1d5755307136c06af08c/Vagrant.dmg',
    '1.1.3' => 'http://files.vagrantup.com/packages/0903e62add3d6c44ce6ad31ce230f3092be445eb/Vagrant.dmg',
    '1.1.2' => 'http://files.vagrantup.com/packages/67bd4d30f7dbefa7c0abc643599f0244986c38c8/Vagrant.dmg',
    '1.1.1' => 'http://files.vagrantup.com/packages/f743fed3cc0466839a97d4724ec0995139f87806/Vagrant.dmg',
    '1.1.0' => 'http://files.vagrantup.com/packages/194948999371e9aee391d13845a0bdeb27e51ac0/Vagrant.dmg',
    '1.0.7' => 'http://files.vagrantup.com/packages/1e2d92d0ed73e28346bb74345c8e353bcab415fb/Vagrant.dmg',
    '1.0.6' => 'http://files.vagrantup.com/packages/476b19a9e5f499b5d0b9d4aba5c0b16ebe434311/Vagrant.dmg',
    '1.0.5' => 'http://files.vagrantup.com/packages/be0bc66efc0c5919e92d8b79e973d9911f2a511f/Vagrant-1.0.5.dmg',
    '1.0.4' => 'http://files.vagrantup.com/packages/5ab18a4f114c2bcbcce67db40b18d026264f428c/Vagrant-1.0.4.dmg',
    '1.0.3' => 'http://files.vagrantup.com/packages/eb590aa3d936ac71cbf9c64cf207f148ddfc000a/Vagrant-1.0.3.dmg',
    '1.0.2' => 'http://files.vagrantup.com/packages/41445466ee4d376601fd8d0c6a5e3af61d32f131/Vagrant-1.0.2.dmg',
    '1.0.1' => 'http://files.vagrantup.com/packages/5bc27e46d3cd5246e0fa2141e52127066407c2b5/Vagrant-1.0.1.dmg',
    '1.0.0' => 'http://files.vagrantup.com/packages/aafa79fe66db687da265d790d5e67a2a7ec30d92/Vagrant-1.0.0.dmg',
  }

  $url = $urlsForVersion[$version]

  package { 'Vagrant':
    ensure   => installed,
    source   => $url,
    provider => 'pkgdmg'
  }

  file { "/Users/${::boxen_user}/.vagrant.d":
    ensure => directory
  }
}
