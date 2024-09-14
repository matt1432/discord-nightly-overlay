{
  x86_64-linux = {
    stable = rec {
      version = "0.0.68";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-SDzY4ij6yD/sDaP6kw9G9e3SszmiUXrKEdzLrtEg8Ho=";
    };

    ptb = rec {
      version = "0.0.104";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-JSncP8O7GMp/hY5LuvRXUcAuJaCjXq1c/jzH4/JLorU=";
    };

    canary = rec {
      version = "0.0.489";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-H9Ha9bw1GVQmssRxqjolT9xfDedEtEVwmUWsIo8tOi4=";
    };

    development = rec {
      version = "0.0.28";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-326KAuqt3VQSgyJAdsdc7YgrdF3vCVoJoKUCVC2UdaU=";
    };
  };
}
