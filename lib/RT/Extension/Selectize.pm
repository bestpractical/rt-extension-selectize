use strict;
use warnings;
package RT::Extension::Selectize;

our $VERSION = '0.01';

RT->AddStyleSheets($_) for qw/selectize.default.css selectize.customized.css/;

# autocomplete.js depends on selectize.min.js, as ->AddJavaScript
# appends new js libs, we can't simply selectize.min.js in that way.

=head1 NAME

RT-Extension-Selectize - Use Selectize for multiple user inputs

=head1 DESCRIPTION

This extension enhances multiple user inputs(like Requestors, Cc,
AdminCc, One-Time Cc/Bcc, etc.) with selectize JavaScript library, via
which each email will appear as a bubble and users can easily
drag/drop/delete delete them.

=head1 RT VERSION

Works with RT 4.4

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Patch RT

    patch -p1 -d /opt/rt4 < patches/Add-Selectize-js-lib-to-RT.patch
    patch -p1 -d /opt/rt4 < patches/Switch-to-Selectize-for-multiple-user-inputs.patch
    patch -p1 -d /opt/rt4 < patches/Add-css-to-Theme.html-for-multiple-user-input-bubble.patch

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::Selectize');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

Best Practical Solutions, LLC E<lt>modules@bestpractical.comE<gt>

=for html <p>All bugs should be reported via email to <a
href="mailto:bug-RT-Extension-Selectize@rt.cpan.org">bug-RT-Extension-Selectize@rt.cpan.org</a>
or via the web at <a
href="http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-Selectize">rt.cpan.org</a>.</p>

=for text
    All bugs should be reported via email to
        bug-RT-Extension-Selectize@rt.cpan.org
    or via the web at
        http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-Selectize

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2019 by Best Practical Solutions, LLC.

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
