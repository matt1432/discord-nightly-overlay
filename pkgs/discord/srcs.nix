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
      version = "0.0.484";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-FiFsAxdgOKYYV/VdXDpthUBy0yaYjYaIm9tzpGAZ+tk=";
    };

    development = rec {
      version = "0.0.27";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-0AfATkHqw5gfbQ27DvM+QoLZgspYWKG09jWWNWERnmQ=";
    };
  };
}
