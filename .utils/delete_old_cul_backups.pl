#!/usr/bin/perl
use File::Find;
use File::Basename;
 
my $backup_root = "/cul/backup/mysql";
@exts = qw(.gz .sh .pl); 

# purge backups older than AGE in days
my @file_list;
my @find_dirs       = ($backup_root);           # directories to search
my $now             = time();                   # get current time
my $days            = 3;                        # how many days old
my $seconds_per_day = 60*60*24;                 # seconds in a day
my $AGE             = $days*$seconds_per_day;   # age in seconds
find ( sub {
  my $file = $File::Find::name;
  if ( -f $file ) {
    push (@file_list, $file);
  }
}, @find_dirs);
 
for my $file (@file_list) {
  chomp $file;
  my ($dir, $name, $ext) = fileparse($file, @exts);
  my @stats = stat($file);
  if ($now-$stats[9] > $AGE and $ext eq '.gz') {
    unlink $file;
  }
}
print "Deleted files older than $days days.\n";
