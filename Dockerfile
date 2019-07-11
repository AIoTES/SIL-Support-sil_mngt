FROM docker:dind 
COPY . /ipsm
RUN chmod +x /ipsm/install.sh && chmod +x /ipsm/uninstall.sh && chmod +x /ipsm/kafka-scripts/kafka-custom.sh
WORKDIR /ipsm
CMD ["./install.sh"]


