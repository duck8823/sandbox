#!/usr/bin/env perl
# 継続的にログを吐き出す

use strict;
use warnings;

use IO::Handle;

open(TXT, '>/var/log/dummy_ltsv.txt') or die "$!";
TXT->autoflush(1);
for (my $i = 0;;$i++) {
    my $number;
    for (1..10) {
        $number .= int(rand(10));
    }
    print TXT "index:$i\tnumber:$number\n";
    sleep 1;
}
close(TXT);
