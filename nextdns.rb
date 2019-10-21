# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.0.2/nextdns_1.0.2_darwin_amd64.tar.gz"
    sha256 "cb12af88942479a643edda2b96a16729835edd30981ccfcf9773efd336d75461"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.0.2/nextdns_1.0.2_linux_amd64.tar.gz"
      sha256 "7a62c7e57a0b8fe5886d4f0b50efaf0a7ccf00141511e97bf6b8efa330bff895"
    end
  end

  def install
    bin.install "nextdns"
  end
end
