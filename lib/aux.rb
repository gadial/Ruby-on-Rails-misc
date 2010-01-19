def sub_partitions(n,k,min = 1)
    return [] if k == 0 or n == 0 or (k == 1 and n<min)
    return [[n]] if k == 1
    result = []
    (min..n).inject([]) {|result, t| result += sub_partitions(n-t,k-1,t).collect{|p| [t]+p}}
end

def compute_partitions(n)
  (1..n).inject([]){|result, k| result += sub_partitions(n,k)}.sort
end

def display_partitions(n)
  compute_partitions(n).collect{|p| p.collect{|x| x.to_s}.join("+") + "=#{n}"}
end