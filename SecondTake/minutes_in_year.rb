#Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc
def minutes_in_year
  365 * 24 * 60
end
alias :m_i_y :minutes_in_year

# Loading file example with music: https://hackaday.com/tag/achaeopteryx/
#### line is used so that we can reference this script as library in other
# program and the running code below won't run
if __FILE__ == $PROGRAM_NAME
  puts m_i_y
end
