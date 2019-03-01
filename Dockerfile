FROM fedora:29

# Update distro
RUN dnf -y update && dnf clean all

# Add limited group for prosody
RUN groupadd prosody --system -g 971

# Add limited user for prosody
RUN useradd -s /bin/bash prosody --system -u 970 -g 971

# Install prosody
RUN dnf install -y prosody && dnf clean all

# Explain what volumes we will use
VOLUME /etc/prosody
VOLUME /var/lib/prosody
VOLUME /var/log/prosody

# Expose ports
EXPOSE 5222 5269

# Flush logs to stdout
ENV __FLUSH_LOG=yes

# Drop privileges
USER prosody

# Issue healthcheck every 10 seconds
HEALTHCHECK --interval=10s --timeout=10s CMD prosodyctl status

# Run it
CMD prosody
