{
  x86_64-linux = {
    stable = rec {
      version = "0.0.67";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-L8COdPP4SFRO+1mipjn4tjLR+xShcJbT/72yhNHdSWg=";
    };

    ptb = rec {
      version = "0.0.103";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-BYzISVHSlKqVN0Egkw5su1wJnrGjQYbxYV840bDCakM=";
    };

    canary = rec {
      version = "0.0.483";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-AWYRQxD0FPqRo1TXUR9wWhZTUr34MRFaBTXzhNcwGKI=";
    };

    development = rec {
      version = "0.0.26";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-kTa9XB9XfmDvJ2r6pm5vDnY3p4RVx94eIv2e7OkHtUA=";
    };
  };
}
