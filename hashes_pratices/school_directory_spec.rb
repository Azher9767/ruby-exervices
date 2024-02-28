require 'rspec'
require './hashes_pratices/school_directory.rb'
require 'byebug'

RSpec.describe SchoolDirectory do 
  let(:school_management) do
    {
      "Math101" => {"student" => [{"name" => "azher", "id" => 123}], "teacher" => ["Hamza Sir"]},
      "History202" => {"student" => [{"name" => "bob", "id" => 321}], "teacher" => ["Ahmad Sir"]}
    }
  end

  context 'adding class' do
    let(:expected_class) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {}
      }
    end

    it 'add class name to school' do
      school_directory = SchoolDirectory.new(school_management)
      expect(school_directory.add_class("Math202")).to eq(expected_class)
    end
  end

  context 'school data' do
    let(:update_school_data) do 
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {} 
      }
    end

    let(:expected_school_data) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}]}  
      }
    end

    it 'add student to class' do
      school_directory = SchoolDirectory.new(update_school_data)
      expect(school_directory.add_student_to_class("Math202", "Alice", 1001)).to eq(expected_school_data)
    end
  end

  context 'remove students' do
    let(:current_schhol_data) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}]}
      }
    end

    let(:expected_current_school_data) do 
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=>{}
      }
    end
    it 'remove student from class based on ID' do
      school_directory = SchoolDirectory.new(current_schhol_data)
      expect(school_directory.remove_student_from_class("Math202", 1001)).to eq(expected_current_school_data)
    end
  end

  context 'adding teacher' do
    let(:input_data) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}]}
      }
    end

    let(:expected_data) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}], "teacher" => ["Mr. Joy"]}
      }
    end

    it 'add teacher to class' do 
      school_directory = SchoolDirectory.new(input_data)
      expect(school_directory.add_teacher("Math202", "Mr. Joy")).to eq(expected_data)
    end
  end

  context 'list of students' do
    let(:school_data) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}], "teacher" => ["Mr. Joy"]}
      }
    end
    
    it 'list of student in class' do
      school_directory = SchoolDirectory.new(school_data)
      expect(school_directory.list_of_students("Math101")).to eq([{"id"=>123, "name"=>"azher"}])
    end
  end

  context 'list of teacher in a class' do 
    let(:school_data_input) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}], "teacher" => ["Mr. Joy"]}
      }
    end

    it 'list of teacher' do
      school_directory = SchoolDirectory.new(school_data_input)
      expect(school_directory.list_of_teacher("Math101")).to eq(["Hamza Sir"])
   end
  end

  context 'find student in a class' do 
    let(:school_data) do
      {
        "History202"=>{"student"=>[{"id"=>321, "name"=>"bob"}], "teacher"=>["Ahmad Sir"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]},
        "Math202"=> {"student"=>[{"id"=>1001, "name"=>"Alice"}], "teacher" => ["Mr. Joy"]}
      }
    end

    it 'find student in a class based on ID ' do
      school_directory = SchoolDirectory.new(school_data)
      expect(school_directory.find_student("History202", 321)).to eq("History202")
    end
  end

  context 'update class' do
    let(:school_old_data) do
      {
        "Math101" => {"student" => [{"name" => "azher", "id" => 123}], "teacher" => ["Hamza Sir"]},
        "History202" => {"student" => [{"name" => "bob", "id" => 321}], "teacher" => ["Ahmad Sir"]}
      }
    end

    let(:class_updated) do
      {
        "History202"=>{"student"=>[{:id=>2002, :name=>"Bob_lobo"}], "teacher"=>["Ms. john"]},
        "Math101"=>{"student"=>[{"id"=>123, "name"=>"azher"}], "teacher"=>["Hamza Sir"]}
      }
    end

    it 'updata class' do 
      school_directory = SchoolDirectory.new(school_old_data)
      expect(school_directory.update_class("History202", [{name: "Bob_lobo", id: 2002}], ["Ms. john"])).to eq(class_updated)
    end
  end
end
