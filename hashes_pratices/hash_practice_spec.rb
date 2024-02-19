class Hashes 
  def merge_hashes(hash1, hash2)
    merged_hash = {}
    hash1.each do |key, value|
      if value.is_a?(Integer) && value > 10
        merged_hash[key] = value
      end
    end
    
    hash2.each do |key, value|
      if value.is_a?(Integer) && value > 10
        merged_hash[key] = value
      end
    end
    
    return merged_hash
  end

  def hashes(hash1, hash2)
    merged_h = {}
  
    hash1.each do |key, value|
      if hash2[key]
        merged_h[key] = value + hash2[key]
        hash2.delete(key)
      else
        merged_h[key] = value
      end
    end
  
    hash2.each do |key, value|
      merged_h[key] = value
    end
  
    merged_h
  end

  def highest_frequency(words)
    word_frequency = Hash.new(0)
    words.each do |word|
      word_frequency[word] += 1
    end
    
    highest_word = word_frequency.max_by {|key, value| value}
    return highest_word[0]
  end

  def shuffle_hash(hash)
    hash.to_a.shuffle.to_h
  end

  def highest_score(score)
    max_score = 0
    highest_scorer = ""
    score.each do |name, score|
      if score > max_score
        max_score = score
        highest_scorer = name
      end
    end
  
    return highest_scorer
  end

  def student_average_score(list_of_students)
    average_scores = {}
    list_of_students.each do |student, scores|
      average_scores[student] = scores.reduce(:+).to_f / scores.length  
    end
    sorted_average_scores = average_scores.sort_by { |student, avg_score| avg_score }.reverse.to_h
    sorted_average_scores.each do |student, avg_score|
      return "#{student}: #{avg_score}"
    end
  end
end

RSpec.describe "hashes practice" do 
 it "takes two hash gets single hash" do
    hash = Hashes.new
    expect(hash.merge_hashes({a: 5, b: 15, c: 20}, {d: 10, e: 25, f: 6})).to eq({:b=>15, :c=>20, :e=>25})
  end

  it " add 2 hashes and and return one single hashes " do
    hash = Hashes.new
    hash1 = {"a" => "hello", "b" => "world"}
    hash2 = {"b" => "ruby", "c" => "programming"}
    expect(hash.hashes(hash1, hash2)).to eq({"a"=>"hello", "b"=>"worldruby", "c"=>"programming"})
  end

  it "word with the highest frequency" do 
    hash = Hashes.new
    words = ["apple", "banana", "apple", "grape", "banana", "apple"]
    expect(hash.highest_frequency(words)).to eq("apple")
  end

  it "shuffle hash" do
    hash = Hashes.new
    hash1 = {1 => 'a', 2 => 'b', 3 => 'c', 4 => 'd', 5 => 'e'}
    expect(hash.shuffle_hash(hash1)).to eq({4=>"d", 3=>"c", 5=>"e", 2=>"b", 1=>"a"})
  end

  it "find name of the student with the highest score" do 
    hash = Hashes.new
    scores = {
      "Azher" => 90,
      "Joy" => 80,
      "Rakesh" => 95,
      "David" => 85
    }
    expect(hash.highest_score(scores)).to eq("Rakesh")
  end

  it "display the student names along with their average scores" do 
    list_of_students = {
      "Alice" => [85, 90, 88],
      "Bob" => [78, 82, 80],
      "Charlie" => [92, 87, 95],
      "Diana" => [70, 65, 68],
    }
    hash = Hashes.new
    expect(hash.student_average_score(list_of_students)).to eq("Charlie: 91.33333333333333")

  end
end