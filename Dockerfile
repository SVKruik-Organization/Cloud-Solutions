FROM jenkins/jenkins:lts

COPY id_ed25519 /var/jenkins_home/.ssh/id_ed25519

USER root
RUN chown jenkins:jenkins /var/jenkins_home/.ssh/id_ed25519 && \
    chmod 600 /var/jenkins_home/.ssh/id_ed25519 && \
    mkdir -p /var/jenkins_home/.ssh && \
    touch /var/jenkins_home/.ssh/known_hosts && \
    chown jenkins:jenkins /var/jenkins_home/.ssh/known_hosts
USER jenkins

RUN ssh-keyscan github.com >> /var/jenkins_home/.ssh/known_hosts
