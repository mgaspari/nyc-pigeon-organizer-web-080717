$returnedBirds = Hash.new
def nyc_pigeon_organizer(data)
  # write your code here!
  data.each do |characteristic, subCharacteristic|
    subCharacteristic.each do |qualityKey, birds|
      birds.each do |bird|
        sort_the_birds(bird, qualityKey, characteristic)
      end
    end
  end
  return $returnedBirds
end


def sort_the_birds(birdsName, birdClassifications, birdQualityCatagory)
  if $returnedBirds[birdsName] == nil
    $returnedBirds[birdsName] = {birdQualityCatagory => [birdClassifications.to_s]}
  else
    if $returnedBirds[birdsName][birdQualityCatagory] == nil
    $returnedBirds[birdsName][birdQualityCatagory] = [birdClassifications.to_s]
    else
    $returnedBirds[birdsName][birdQualityCatagory].push(birdClassifications.to_s)
    end
  end
end
=begin
create data structure for the different names
run a loop where each key is tested - this key should be appended to the variable in the ds for the bird

if name is not repeating, the name is added as a key
  the value of that key is a hash with the value
  the value for that key is an array where the former key of the original ds is appended
else if the name matches
  if the key matches the key in this array
    it appends the key
  else
  creates a new key and appends the variable
returns the new Hash

change to string
make sure the original if is closed
define new hash


=end
