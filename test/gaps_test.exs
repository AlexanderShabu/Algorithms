defmodule GapsTest do
  use ExUnit.Case
  doctest Gaps

  test "10" do
    assert Gaps.solution(10) == 1
  end
  test "1110" do
    assert Gaps.solution(1110) == 3
  end
  test "2130" do
    assert Gaps.solution(2130) == 4
  end
  test "29998813220" do
    assert Gaps.solution(29998813220) == 6
  end
  test "7200988132204455" do
    assert Gaps.solution(7200988132204455) == 4
  end
  test "72000000000000000033335" do
    assert Gaps.solution(72000000000000000033335) == 8
  end
  test "array of numbers" do
    Enum.each([
      {22002200000000000000033335,5},
      {2200220033335,10},
      {32,0}, 
      {2147483647,0},
    ], fn {num,res} -> assert Gaps.solution(num) == res  end)
  end
end
