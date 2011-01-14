# ===========================================================================
# Project:   ScTests
# Copyright: ©2010 My Company, Inc.
# ===========================================================================

sc_rev = `cd frameworks/sproutcore && git log -1 --pretty='format:%H'`

# Add initial buildfile information here
config :all, :required => [:sproutcore],
        :build_prefix => '../public',
        :url_prefix => '',
        :build_number => sc_rev,
        :load_tests => true,
        :load_debug => true,
        :load_fixtures => true,
        :minify => false,
        :overwrite_current => true,
        :use_packed => false # Necessary for inject.js to get loaded properly

config 'sproutcore/testing', :javascript_libs => ['/javascripts/inject.js']
