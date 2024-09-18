{
  x86_64-linux = {
    stable = rec {
      version = "0.0.68";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-SDzY4ij6yD/sDaP6kw9G9e3SszmiUXrKEdzLrtEg8Ho=";
    };

    ptb = rec {
      version = "0.0.105";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-u/4wWssZxKlHrRW/Vd9pqUfqN2VQGYv1SDktpRsOayM=";
    };

    canary = rec {
      version = "0.0.490";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-vH7XXHlAy1hclbsZCy3X3/yQgpELyL5q2GTGhM1idUc=";
    };

    development = rec {
      version = "0.0.27";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-0AfATkHqw5gfbQ27DvM+QoLZgspYWKG09jWWNWERnmQ=";
    };
  };
}
