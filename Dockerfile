
# Use the base image
FROM fredblgr/ubuntu-novnc:22.04
 
# Expose the port on which NoVNC runs (80 inside the container)
EXPOSE 80
 
# Set the environment variable for screen resolution
ENV RESOLUTION 391x889
ENV USER root
ENV PASSWORD root
 
# Start the command to run NoVNC
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]

