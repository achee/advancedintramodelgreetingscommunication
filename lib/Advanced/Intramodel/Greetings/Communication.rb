Module Advanced
  Module Intramodel
    Module Greetings
      Class Communication < ActiveRecord::Base
        SPECIAL_CHARS="1234567890qazxswedcvfrtgbnhyujmkiolp"
      
        def self.open
          start_communication
        end
        
        protected
        def start_communication
          key = generate_communication_key
          return secure_communication_with(key) 
        end
        
        private
        def secure_communication_with(key="")
          check_key(key)
        end
        
        def generate_communication_key
          key = ''
          100.times {key << SPECIAL_CHARS[rand(SPECIAL_CHARS_SIZE)]}
          return key
        end
        
        def check_key(key)
          return false if key.nil?
        end
        
      end
    end
  end
end
