require "./client"
require "./ipv4"
require "./ipv6"

class Hetzner::PublicNet
  include JSON::Serializable

  property ipv4 : Hetzner::Ipv4?
  property ipv6 : Hetzner::Ipv6?
end
