FROM docker:dind 
RUN mkdir /mngt
COPY script /mngt/script
RUN chmod +x /mngt/script/install.sh && chmod +x /mngt/script/uninstall.sh && chmod +x /mngt/script/kafka-scripts/kafka-custom.sh
WORKDIR /mngt/script
CMD ["./install.sh"]


