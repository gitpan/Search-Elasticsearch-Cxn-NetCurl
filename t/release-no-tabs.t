
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Search/Elasticsearch/Cxn/NetCurl.pm',
    't/10_Basic/10_load.t',
    't/20_Serializer/10_load_cpanel.t',
    't/20_Serializer/11_load_xs.t',
    't/20_Serializer/12_load_pp.t',
    't/20_Serializer/13_preload_cpanel.t',
    't/20_Serializer/14_preload_xs.t',
    't/20_Serializer/20_xs_encode_decode.t',
    't/20_Serializer/21_xs_encode_bulk.t',
    't/20_Serializer/22_xs_encode_pretty.t',
    't/20_Serializer/30_cpanel_encode_decode.t',
    't/20_Serializer/31_cpanel_encode_bulk.t',
    't/20_Serializer/32_cpanel_encode_pretty.t',
    't/20_Serializer/40_pp_encode_decode.t',
    't/20_Serializer/41_pp_encode_bulk.t',
    't/20_Serializer/42_pp_encode_pretty.t',
    't/20_Serializer/encode_bulk.pl',
    't/20_Serializer/encode_decode.pl',
    't/20_Serializer/encode_pretty.pl',
    't/30_Logger/10_explicit.t',
    't/30_Logger/20_implicit.t',
    't/30_Logger/30_log_methods.t',
    't/30_Logger/40_trace_request.t',
    't/30_Logger/50_trace_response.t',
    't/30_Logger/60_trace_error.t',
    't/30_Logger/70_trace_comment.t',
    't/40_Transport/10_tidy_request.t',
    't/40_Transport/20_send_body_as.t',
    't/40_Transport/30_perform_request.t',
    't/50_Cxn_Pool/10_static_normal.t',
    't/50_Cxn_Pool/11_static_node_missing.t',
    't/50_Cxn_Pool/12_static_node_fails.t',
    't/50_Cxn_Pool/13_static_node_timesout.t',
    't/50_Cxn_Pool/14_static_both_nodes_timeout.t',
    't/50_Cxn_Pool/15_static_both_nodes_fail.t',
    't/50_Cxn_Pool/16_static_nodes_starting.t',
    't/50_Cxn_Pool/17_static_runaway_nodes.t',
    't/50_Cxn_Pool/30_sniff_normal.t',
    't/50_Cxn_Pool/31_sniff_new_nodes.t',
    't/50_Cxn_Pool/32_sniff_node_fails.t',
    't/50_Cxn_Pool/33_sniff_both_nodes_fail.t',
    't/50_Cxn_Pool/34_sniff_node_timeout.t',
    't/50_Cxn_Pool/35_sniff_both_nodes_timeout.t',
    't/50_Cxn_Pool/36_sniff_nodes_starting.t',
    't/50_Cxn_Pool/37_sniff_runaway_nodes.t',
    't/50_Cxn_Pool/38_bad_sniff.t',
    't/50_Cxn_Pool/39_sniff_max_content.t',
    't/50_Cxn_Pool/50_noping_normal.t',
    't/50_Cxn_Pool/51_noping_node_fails.t',
    't/50_Cxn_Pool/52_noping_node_timesout.t',
    't/50_Cxn_Pool/53_noping_all_nodes_fail.t',
    't/50_Cxn_Pool/54_noping_nodes_starting.t',
    't/50_Cxn_Pool/55_noping_runaway_nodes.t',
    't/50_Cxn_Pool/56_max_retries.t',
    't/50_Cxn_Pool/70_live.t',
    't/60_Cxn/10_basic.t',
    't/60_Cxn/20_process_response.t',
    't/60_Cxn/30_http.t',
    't/60_Cxn/40_fork_httptiny.t',
    't/60_Cxn/41_fork_lwp.t',
    't/60_Cxn/42_fork_hijk.t',
    't/60_Cxn/43_fork_netcurl.t',
    't/70_Helper/10_bulk_add_action.t',
    't/70_Helper/20_bulk_helpers.t',
    't/70_Helper/30_bulk_flush.t',
    't/70_Helper/40_bulk_errors.t',
    't/70_Helper/50_scroll.t',
    't/70_Helper/60_reindex.t',
    't/90_Client_Spec/00_print_version.t',
    't/lib/LogCallback.pl',
    't/lib/MockCxn.pm',
    't/lib/default_cxn.pl',
    't/lib/es_sync.pl',
    't/lib/es_sync_fork.pl',
    't/lib/index_test_data.pl',
    't/release-eol.t',
    't/release-no-tabs.t',
    't/release-pod-syntax.t'
);

notabs_ok($_) foreach @files;
done_testing;
