{
  x86_64-linux = {
    stable = rec {
      version = "0.0.69";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-F0Cv6V88vLwMCKOEDjA63J+0h5sjbjvOz1cGPVncYMk=";
    };

    ptb = rec {
      version = "0.0.107";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-buvhkaRGwZiQPvH+aF2yTIjEdwQvrs+nXT/QvpGRxG0=";
    };

    canary = rec {
      version = "0.0.494";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-biqoWPpmSwDVAXkJ7aNalDqxZqPxYjZ5I/Xn316hwLs=";
    };

    development = rec {
      version = "0.0.29";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rojJ721DgMY4rsv77YPZCdbQg9P2VyZ24rnR5nJQvu0=";
    };
  };
}
