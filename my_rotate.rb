def my_rotate(a, k)
  n = a.length
  return [] if n == 0

  rotate = k % n
  return a if rotate == 0

  b = []
  a.each_with_index do |ai, i|
    rotated_i = i + rotate
    rotated_i -= n if rotated_i > n - 1

    b[rotated_i] = ai
  end

  b
end
