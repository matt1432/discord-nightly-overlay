{
  x86_64-linux = {
    stable = rec {
      version = "0.0.68";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-SDzY4ij6yD/sDaP6kw9G9e3SszmiUXrKEdzLrtEg8Ho=";
    };

    ptb = rec {
      version = "0.0.106";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-ba1M9lIBqG+aFeNzF50YwnXJl4h7yS0CpDEcJL/4KVg=";
    };

    canary = rec {
      version = "0.0.492";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-NjcNgKYm1Twm8nN3sFlZCG/3x5fcSmX7X2On7CeZm0M=";
    };

    development = rec {
      version = "0.0.28";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-cAokzF0a5EfTX/RnOfF+GRwHlEvbjQG6dGr0eXhLLw8=";
    };
  };
}
