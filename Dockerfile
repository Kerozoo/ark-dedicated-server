FROM cm2network/steamcmd

# Install ark dedicated server
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/ark-dedicated +app_update 376030 +quit

# Copy exec.sh for starting ark server
COPY exec.sh /home/steam/ark-dedicated/exec.sh