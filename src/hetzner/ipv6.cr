require "./client"

class Hetzner::Ipv6
  include JSON::Serializable

  property ip : String?

  def host_ip?
    if ip = @ip
      if ip.ends_with?("::/64")
        ip.sub("::/64", "::1")
      else
        raise "IPv6 (#{ip}) does not end with ::/64"
      end
    end
  end
end
