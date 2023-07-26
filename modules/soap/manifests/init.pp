# A Chassis extension to install and configure BC Math on your Chassis server
class soap (
	$config,
	$path = '/vagrant/extensions/soap',
) {
	if ( ! empty( $config[disabled_extensions] ) and 'chassis/soap' in $config[disabled_extensions] ) {
		$package = absent
	} else {
		$package = latest
	}

	if versioncmp( $config[php], '5.4') <= 0 {
		$php_package = 'php5'
	} else {
		$php_package = "php${config[php]}"
	}

	package { "${php_package}-soap":
		ensure  => $package,
		require => [ Package["${php_package}-cli"], Package["${php_package}-fpm"] ],
		notify  => Service["${php_package}-fpm"]
	}
}
