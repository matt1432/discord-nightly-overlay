{
  x86_64-linux = {
    stable = rec {
      version = "0.0.58";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-YkyniFgkD4GMxUya+/Ke5fxosZKHKyc4+cAx3HI4w8c=";
    };

    ptb = rec {
      version = "0.0.93";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-MO940dRAJ0J/fa8I+nU8483AH8PA7eIJ9ZUF15iqbgE=";
    };

    canary = rec {
      version = "0.0.443";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-Z0wUPMlUWy7Lmw9Xqa3U0lfmNwsVcKs0Z+SWpbCPYm0=";
    };

    development = rec {
      version = "0.0.22";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-dSoi/YZra8SRbV1rvbtKkyHmhfTb+A6mja8zZ9Y5JNo=";
    };
  };
}
