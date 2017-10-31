# require 'httparty'
# require 'pry'


# options = {
#   body: {
#     "ids[]" => 1,
#     "access_token" => 1508725650911
#   }
# }

# response = HTTParty.post('https://questions-update.applicaster.com/client/v1/questions/276b9451-1236-4b67-b4fa-b8be34d0d644/answers', options)

# binding.pry

5_000_000.times do |n|
  %x(http -f post https://questions-update.applicaster.com/client/v1/questions/276b9451-1236-4b67-b4fa-b8be34d0d644/answers ids[]=1 access_token=1508725650911)
end
