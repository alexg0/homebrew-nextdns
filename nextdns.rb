# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.4.25"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.4.25/nextdns_1.4.25_darwin_amd64.tar.gz"
    sha256 "7047a552b5ee48deb95bab82c6bb5924c1e8624fe22ae94ecdc6031b6a82e4c4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.4.25/nextdns_1.4.25_linux_amd64.tar.gz"
      sha256 "94232b1508d4112773a9762e1c9734fe25f73aa46b402272ea2ba1231af8bfc0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.4.25/nextdns_1.4.25_linux_arm64.tar.gz"
        sha256 "b60e289e5ceac8e3bb6cd7c9fd3dfd67062bce03f55312beb3c12c507b829d7d"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.4.25/nextdns_1.4.25_linux_armv6.tar.gz"
        sha256 "9d0f419da6685f6bf5b683de9f9b8b9c2cf157ecf0cde42dc6e74b40f8f1c826"
      end
    end
  end

  def install
    bin.install "nextdns"
  end

  def caveats; <<~EOS
    To install NextDNS, run the following command:
    sudo nextdns install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo nextdns activate
  EOS
  end
end
