require 'rspec'
require 'byebug'
require './hashes_pratices/logs_hash.rb'

RSpec.describe LogsHash do 
  context 'parsing' do
    let(:input_log_content) do
      "2023-03-15T12:00:00 | abc123 | /home | 200 | 250\n2023-03-15T12:00:05 | def456 | /contact | 200 | 190\n2023-03-15T12:00:10 | ghi789 | /home | 500 | 300"
    end

    let(:expected_parsing_log_data) do
      [
        {:timestamp=>"2023-03-15T12:00:00 ", :request_id=>" abc123 ", :path=>" /home ", :status=>" 200 ", :response_time=>" 250"},
        {:timestamp=>"2023-03-15T12:00:05 ", :request_id=>" def456 ", :path=>" /contact ", :status=>" 200 ", :response_time=>" 190"},
        {:timestamp=>"2023-03-15T12:00:10 ", :request_id=>" ghi789 ", :path=>" /home ", :status=>" 500 ", :response_time=>" 300"}
      ]
    end
    it 'parsing data' do
      log_hash = LogsHash.new
      expect(log_hash.parse_log(input_log_content)).to eq(expected_parsing_log_data) 
    end
  end

  context 'Analysis functions' do
    let(:input_data) do
      [
        {:timestamp=>"2023-03-15T12:00:00 ", :request_id=>" abc123 ", :path=>" /home ", :status=>" 200 ", :response_time=>" 250"},
        {:timestamp=>"2023-03-15T12:00:05 ", :request_id=>" def456 ", :path=>" /contact ", :status=>" 200 ", :response_time=>" 190"},
        {:timestamp=>"2023-03-15T12:00:10 ", :request_id=>" ghi789 ", :path=>" /home ", :status=>" 500 ", :response_time=>" 300"}
      ]
    end
    it 'find average response time' do
      log_hash = LogsHash.new
      expect(log_hash.average_response_time(input_data)).to eq(246.67)
    end

    it 'count status code' do 
      log_hash = LogsHash.new
      expect(log_hash.count_status_code(input_data)).to eq([])
    end
  end
end