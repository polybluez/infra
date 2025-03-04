{
  inputs,
  cell,
}: let
  inherit (cell) nixosConfigurations;
in {
  dirtcheap-usa = {
    imports = [nixosConfigurations.dirtcheap-usa];

    deployment = {
      targetHost = "104.168.51.130";
      targetPort = 1020;
      targetUser = "root";
    };
  };

  dirtcheap-nsk = {
    imports = [nixosConfigurations.dirtcheap-nsk];

    deployment = {
      targetHost = "193.233.84.243";
      targetPort = 7022;
      targetUser = "root";
    };
  };
}
