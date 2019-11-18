timezones = {'EDT' => -4, 'EST' => -5, 'UTC' => 0}
greenwich = Time.now.utc
puts  (greenwich + timezones[ARGV[0]] * 3600).strftime "%Y-%m-%d %H:%M:%S"    # 3600 seconds in hour