use strict;
use warnings;

use Test::More;
use Moose::Util::TypeConstraints;

# LoadableClass and ClassName should be exactly the same thing for
# type mappers to get it right when you're switching from one to another.

use MooseX::Types::LoadableClass qw/LoadableClass ClassName/;

ok ClassName->equals(LoadableClass);

done_testing;

