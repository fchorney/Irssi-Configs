use strict;
use Irssi;
use Irssi::Irc;
use vars qw($VERSION %IRSSI);

$VERSION = '0.01';
%IRSSI = (
	authors		=> 'Fernando Chorney',
	contact 	=> 'djsbx@djsbx.com',
	name 		=> 'Roll',
	description	=> 'Roll a d100',
	license		=> 'GPL',
);

sub roll()
{
	my($data, $server, $witem) = @_;
	my $channel = $witem->{name};
	my $val = int(rand(100)+1);
	$server->command("msg $channel You Rolled: $val");
}

Irssi::command_bind("roll", \&roll);

