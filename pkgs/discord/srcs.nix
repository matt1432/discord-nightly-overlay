{
  x86_64-linux = {
    stable = rec {
      version = "0.0.59";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-wv0HcbPlFRb8OTvnkCdb1MAuvl/7LHTUfE5UxpeSIPw=";
    };

    ptb = rec {
      version = "0.0.94";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-wqJGOD4Kys0XkqGU1hxjCPMkapbgX5kwjB4LRtlvo8U=";
    };

    canary = rec {
      version = "0.0.452";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-81zt+PaKvAMr8LElVBPAIp71tHPE9R1a6EI8E9qMt3Y=";
    };

    development = rec {
      version = "0.0.22";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-dSoi/YZra8SRbV1rvbtKkyHmhfTb+A6mja8zZ9Y5JNo=";
    };
  };
}
