local binary = "10111"; -- Enter binary number here; 16 is the decimal in thise case.


function convertToDecimal()
  local nums = {};
  local counter = 0;
  local decimal = 0;
  for i = 1,#binary do
    nums[i] = tonumber(string.char(string.byte(string.reverse(binary),i)));
  end;
  for i2 = 1,#nums do
    if (nums[i2] == 1) then
        nums[i2] = 2^counter;
      end;
    counter = counter + 1
    end;
  for i3 = 1,#nums do
    decimal = nums[i3];
  end;
  return decimal;
end;
print(convertToDecimal());
    
