require 'time' 

module TimeLogic

  def final_results(input)
    if is_input_valid?(input)
       is_timestamp?(input) ? answer_for_timestamp(input) : answer_for_date(input) 
    else 
       return nil_hash
   end
  end

  def answer_for_timestamp(input_timestamp)
    {
      unix: input_timestamp,
      natural: convert_timestamp_to_date(input_timestamp),
    }
  end
  
  def answer_for_date(input_date)
    {
      unix: convert_date_to_timestamp(input_date), 
      natural: input_date,
    }
  end

  private

    def is_input_valid?(input)
        if is_timestamp?(input) 
          true 
        else 
          DateTime.parse(input) rescue false 
        end
    end

    def is_timestamp?(string)
      string.scan(/\D/).empty?
    end

    def convert_to_int(data)
      data.to_i
    end

    def convert_to_time(data)
      data.to_time
    end

    def convert_to_string(data)
      data.to_s
    end

    def time_at(data)
      Time.at(data).utc
    end
    
    def convert_timestamp_to_date(string)
      convert_to_string(time_at(convert_to_int(string))) 
    end

    def convert_date_to_timestamp(string)
      epoch = Date.new(1970,1,1)

      convert_to_int((convert_to_time(string) - convert_to_time(epoch))) 
    end

    def nil_hash
      {
        unix: nil,
        natural: nil
      }
    end

end