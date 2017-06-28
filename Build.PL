use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name         => 'Protocol::WebSocket',
	dist_author         => [q{Original Author: Viacheslav Tykhanovskyi, C<vti@cpan.org>}],
	dist_version_from   => 'lib/Protocol/WebSocket.pm',
	meta_merge => {
		resources => {
			homepage   => 'https://github.com/vti/protocol-websocket',
			bugtracker => 'https://github.com/vti/protocol-websocket/issues',
			repository => 'git://github.com/vti/protocol-websocket.git',
		},
	},

	configure_requires => {
		'Module::Build' => '0.38',
	},
	requires => {
	    'perl'              => 5.0080001,
        'Carp'              => 0,
		'Digest::MD5'       => 0,
		'Digest::SHA'       => 0,
		'Scalar::Util'      => 0
	},
	build_requires => {
		'Test::More'          => 0.88,
	},
	add_to_cleanup => [
		'Protocol-WebSocket-*',
		'cover_db',
		'*.rpm',
		'*.deb',
	]
);

$builder->create_build_script();
