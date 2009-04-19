#!/usr/bin/perl -w

$from = "";
$subject = "";

while(<>) {
  print;
  chomp;
  if (/^From: (.*)/) { $from = $1; }
  if (/^Subject: \[[^\]]*\] *(.*)/) { $subject = $1; }
  if (/^$/) { print "Author: $from\nSubject: $subject\n\n"; last; }
}

while(<>)  { print; }
