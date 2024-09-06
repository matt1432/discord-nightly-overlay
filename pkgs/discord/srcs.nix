{
  x86_64-linux = {
    stable = rec {
      version = "0.0.67";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-L8COdPP4SFRO+1mipjn4tjLR+xShcJbT/72yhNHdSWg=";
    };

    ptb = rec {
      version = "0.0.102";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-F1lTEDJFp0GnAiqXS8x/gVPLh000rvL/uWNwlA19CRU=";
    };

    canary = rec {
      version = "0.0.482";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-XX42YZpqSPhuPgrjlGCNyY1l3O5wG11Mwn4ql3lG7ek=";
    };

    development = rec {
      version = "0.0.26";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-kTa9XB9XfmDvJ2r6pm5vDnY3p4RVx94eIv2e7OkHtUA=";
    };
  };
}
