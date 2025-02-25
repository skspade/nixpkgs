{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "dnscrypt-proxy2";
  version = "2.1.5";

  vendorSha256 = null;

  doCheck = false;

  src = fetchFromGitHub {
    owner = "DNSCrypt";
    repo = "dnscrypt-proxy";
    rev = version;
    sha256 = "sha256-A9Cu4wcJxrptd9CpgXw4eyMX2nmNAogYBRDeeAjpEZY=";
  };

  meta = with lib; {
    description = "A tool that provides secure DNS resolution";

    license = licenses.isc;
    homepage = "https://dnscrypt.info/";
    maintainers = with maintainers; [ atemu waynr ];
    mainProgram = "dnscrypt-proxy";
    platforms = with platforms; unix;
  };
}
