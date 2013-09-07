# NAME

MooseX::Types::LoadableClass - ClassName type constraint with coercion to load the class.

# VERSION

version 0.010

# SYNOPSIS

    package MyClass;
    use Moose;
    use MooseX::Types::LoadableClass qw/ LoadableClass /;

    has foobar_class => (
        is => 'ro',
        required => 1,
        isa => LoadableClass,
    );

    MyClass->new(foobar_class => 'FooBar'); # FooBar.pm is loaded or an
                                            # exception is thrown.

# DESCRIPTION

    use Moose::Util::TypeConstraints;

    my $tc = subtype as ClassName;
    coerce $tc, from Str, via { Class::Load::load_class($_); $_ };

I've written those three lines of code quite a lot of times, in quite
a lot of places.

Now I don't have to.

# TYPES EXPORTED

## LoadableClass

A normal class / package.

## LoadableRole

Like `LoadableClass`, except the loaded package must be a [Moose::Role](http://search.cpan.org/perldoc?Moose::Role).

# AUTHORS

- Tomas Doran <bobtfish@bobtfish.net>
- Florian Ragwitz <rafl@debian.org>
- Karen Etheridge <ether@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Infinity Interactive, Inc.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
