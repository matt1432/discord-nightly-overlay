{
  x86_64-linux = {
    stable = rec {
      version = "0.0.68";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-SDzY4ij6yD/sDaP6kw9G9e3SszmiUXrKEdzLrtEg8Ho=";
    };

    ptb = rec {
      version = "0.0.103";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-BYzISVHSlKqVN0Egkw5su1wJnrGjQYbxYV840bDCakM=";
    };

    canary = rec {
      version = "0.0.487";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-dEv5cuRbmDwnCkWlt+MY4fAps3FN8scfSe2aL2XPRAs=";
    };

    development = rec {
      version = "0.0.28";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-326KAuqt3VQSgyJAdsdc7YgrdF3vCVoJoKUCVC2UdaU=";
    };
  };
}
