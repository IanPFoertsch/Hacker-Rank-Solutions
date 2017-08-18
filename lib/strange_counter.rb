class StrangeCounter
  def self.read
    STDIN.gets.strip.to_i
  end


  def self.run
    target = read

    store = {
      1 => 3
    }

    previous_starting_value = store[1]

    while store.keys.last < target do
      build_iteration(store, previous_starting_value)
      previous_starting_value = previous_starting_value * 2
    end


    unless store[target]
      nearest_time =  store.keys[-2] || 1
      starting_value = store[nearest_time]
      store[target] = starting_value - (target - nearest_time)
    end

    puts store[target]
  end

  def self.ending_time(time, value)
    (time + value) - 1
  end

  def self.at_end_of_counter(store, i)
    store[i-1] == 1 #case for the end of our current iteration
  end

  def self.build_iteration(store, previous_starting_value)
    last_time = store.keys.last
    next_step = ending_time(last_time, previous_starting_value + 1)
    store[next_step] = previous_starting_value * 2
  end
end

StrangeCounter.run
