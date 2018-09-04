#!/usr/bin/env perl
# 継続的にログを吐き出す

use strict;
use warnings;

for (my $i = 0;;$i++) {
    my $number;
    for (1..10) {
        $number .= int(rand(10));
    }
    print "index:$i\tnumber:$number\n";
    sleep 1;
}
