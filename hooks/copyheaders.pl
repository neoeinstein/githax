#!/usr/bin/perl -w

$from = "";
$subject = "";
$date = "";

while(<>) {
  print;
  chomp;
  if (/^From: (.*)/) { $from = $1; }
  if (/^Subject: \[[^\]]*\] *(.*)/) { $subject = $1; }
  if (/^Date: (.*)/) { $date = $1; }
  if (/^$/) { print "Author: $from\nDate: $date\nSubject: $subject\n\n"; last; }
}

while(<>)  { print; }
