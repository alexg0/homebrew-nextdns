# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.1.2/nextdns_1.1.2_darwin_amd64.tar.gz"
    sha256 "979eb9182c0c2f71743c8f9559f6bb2b0bebbccceedc34cb3d625cb690619b6d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.1.2/nextdns_1.1.2_linux_amd64.tar.gz"
      sha256 "33709be6d7143dd211870e24559dca513242aab5a8107ffb20aa9774dfecded4"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.1.2/nextdns_1.1.2_linux_arm64.tar.gz"
        sha256 "f8f434f1d4e82ea5c086da45a7f2ed9340e1b3c22d5b425b2e6bee622283f5aa"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.1.2/nextdns_1.1.2_linux_armv6.tar.gz"
        sha256 "8dd2dd93521658daae73018c9123377b6559921585a8fc9f1395d1c2a3b30ad7"
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
    nextdns activate
  EOS
  end
end
