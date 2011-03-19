require 'Items/key'

class AdvancedKey < Key

  @seed = ADVANCED_KEY_SEED
  
  # Determines if the key is valid
  def valid? hash

    if !hash.respond_to? :getHash
      raise "Key::Hash must recieve a key as a parameter"
    end

    if hash.getHash == @key
      return true
    else
      return false
    end
  end
  
end
