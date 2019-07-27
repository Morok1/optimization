$IGNORE_FIRST = 1;
while(<>)
{
  if (/^([81]\d+) size, time: (\d+)$/)
  {
    if (!$reading)
    {
      printStats($t89, $n89, $m89, $t101, $n101, $m101);
      $reading = 1;
      if ($IGNORE_FIRST)
      {
        $t89 = $n89 = 0;
        $m89 = $m101 = 1000000000000;
        $t101 = $n101 = 0;
      }
      else
      {
        $t89 = $2;
        $n89 = 1;
        $m89 = $2;
        $m101 = 1000000000000;
        $t101 = 0;
        $n101 = 0;
      }
    }
    else
    {
      if ($1 == 89) {$t89 += $2; $n89++; if ($2 < $m89) {$m89 = $2;}}
      elsif ($1 == 101) {$t101 += $2; $n101++; if ($2 < $m101) {$m101 = $2}}
      else {warn "oh dear";}
    }
  }
  else {$reading = 0;}

}
printStats($t89, $n89, $m89, $t101, $n101, $m101);

sub printStats {
  my($t89, $n89, $m89, $t101, $n101, $m101) = @_;
  $n89 == 0 && return;
  print "89 average: ", $t89/$n89, " minimum: $m89\n";
  print "101 average: ", $t101/$n101, " minimum: $m101\n";
  print "improvements: ", (1-($t89/$n89)/($t101/$n101))*100, "  ", (1-$m89/$m101)*100,"\n";
}
__END__
