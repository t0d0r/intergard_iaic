#!/usr/bin/env perl
use Mojolicious::Lite;
use utf8;

get '/' => sub {
    my $self = shift;
    $self->stash(body_class => 'home');
    $self->render('index');
};

get '/usefully' => sub {
    my $self = shift;
    $self->stash(body_class => 'usefully');
    $self->render('tips');
};

get '/about' => sub {
    my $self = shift;
    $self->stash(body_class => 'about');
    $self->render('about');
};

get '/contacts' => sub {
    my $self = shift;
    $self->stash(body_class => 'contacts');
    $self->render('contacts');
};

get '/query-form' => sub {
    my $self = shift;
    $self->stash(body_class => '');
    $self->render('query-form');
};


app->secret('9a16c0fa-53c6-11e1-b8b6-001d728e2ae7');
app->start;

__DATA__
