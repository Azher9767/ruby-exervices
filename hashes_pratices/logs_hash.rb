class LogsHash
  
    @@log_entry_array = []

  def parse_log(log_content)
    log_content.split("\n").each do |logs|
      timestamp, request_id, path, status, response_time = logs.split("|")
      log_entry_hash = 
        {
          timestamp: timestamp,
          request_id: request_id,
          path: path,
          status: status,
          response_time: response_time
        }
        @@log_entry_array << log_entry_hash
     end
    @@log_entry_array
  end

  def average_response_time(data)
    count = 0
    data.each do |key|
      key.each do |k1, v1|
       
        if k1 == :response_time
        
          count += v1.to_i
        end
      end
    end
    count = count.to_f/data.length
    count.round(2)
  end

  def count_status_code(data)
    count_status = {}
    data.each do |key|  
      key.each do |k1, v1|
        if k1 == :status
          count_status[v1] += 1 
        end
      end
    end
    count_status
  end
end

