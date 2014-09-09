use v5.18;

my @loops = (
    c_style => sub {
        for (my $i = 0; $i <= 3; ++$i) {
            print $i;
        }
    },
    perl_style => sub {
        for my $i (0..3) {
            print $i;
        }
    },
    topic => sub {
        for (0..3) {
            print $_;
        }
    },
    topic_unseen => sub {
        for (0..3) {
            print;
        }
    },
    one_line => sub {
        print for (0..3);
    },
    );

while (@loops) {
    my $name = shift @loops;
    my $loop = shift @loops;
    say $name . ': ';
    $loop->();
    say '';
}
