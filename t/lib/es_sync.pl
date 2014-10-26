use Search::Elasticsearch;
use Test::More;
use strict;
use warnings;

my $trace
    = !$ENV{TRACE}       ? undef
    : $ENV{TRACE} eq '1' ? 'Stderr'
    :                      [ 'File', $ENV{TRACE} ];

my $version = $ENV{ES_VERSION} || '';
my $api = $version =~ /^0.90/ ? '0_90::Direct' : 'Direct';
my $body     = $ENV{ES_BODY}     || 'GET';
my $cxn      = $ENV{ES_CXN}      || do "default_cxn.pl" || die $!;
my $cxn_pool = $ENV{ES_CXN_POOL} || 'Static';
my $timeout  = $ENV{ES_TIMEOUT}  || 30;

my $es;
if ( $ENV{ES} ) {
    $es = Search::Elasticsearch->new(
        nodes            => $ENV{ES},
        trace_to         => $trace,
        cxn              => $cxn,
        cxn_pool         => $cxn_pool,
        client           => $api,
        send_get_body_as => $body,
        request_timeout  => $timeout
    );
    eval { $es->ping; } or do {
        diag $@;
        undef $es;
    };
}

unless ($es) {
    plan skip_all => 'No Elasticsearch test node available';
    exit;
}

return $es;
