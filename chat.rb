# Write your solution here!
require "openai"
require "dotenv/load"

client = OpenAI::Client.new(access_token: ENV.fetch("OPENAI_API_KEY"))

message_list = [
  {
    "role" => "system",
    "content" => "You are a helpful assistant who talks like Shakespeare."
  },
  {
    "role" => "user",
    "content" => "Hello! What are the best spots for pizza in Chicago?"
  }
]

api_response = client.chat(
  parameters: {
    model: 'gpt-3.5-turbo',
    messages: message_list
  }
)

# First Problem
count = 0
# while count <=50 
#   pp "_"
#   count = count + 1
# end 

status = true
while status 
  pp "Hello! How can I help you today?"
  answer = gets.chomp

  message_1 = [
    {
      "role" => "user",
      "content" => answer
    }
  ]
  if answer == "bye" 
    status = false
    pp "bye!"
  else
    api_response1 = client.chat(
      parameters: {
        model: 'gpt-3.5-turbo', 
        messages: message_1
      }
    )
    pp api_response1.fetch("choices")[0].fetch("message").fetch("content")
    end
  end
# count = 0
# while count <=50 
#   pp "_"
#   count = count + 1
# end 
