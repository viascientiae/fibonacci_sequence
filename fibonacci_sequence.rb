def fibs(n)
  i = 0

  sequence = []

  while i < n
    if i == 0
      sequence << 0
      i += 1
    elsif i == 1
      sequence << 1
      i += 1
    elsif i > 1
      sequence << (sequence[i - 2] + sequence[i - 1])
      i += 1
    end
  end

  return sequence
end

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  sequence = fibs_rec(n - 1)
  sequence << sequence[-1] + sequence[-2]
end
