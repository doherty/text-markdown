use strict;
use warnings;
use Test::More;
use FindBin qw($Bin);

require "$Bin/21fulldocs-text-markdown.t";
tidy();

my $docsdir = "$Bin/Markdown-from-MDTest1.1.mdtest";
my @files = get_files($docsdir);

plan tests => scalar(@files) + 1;

use_ok('Text::Markdown');

my $m = Text::Markdown->new();

run_tests($m, $docsdir, @files);
