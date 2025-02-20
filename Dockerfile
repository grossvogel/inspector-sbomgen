FROM --platform=linux/amd64 debian:bookworm-slim

RUN apt-get update -y && apt-get install -y curl unzip

RUN mkdir /inspector-bomgen

WORKDIR /inspector-bomgen

RUN curl https://amazon-inspector-sbomgen.s3.amazonaws.com/latest/linux/amd64/inspector-sbomgen.zip > inspector-sbomgen.zip && \
  unzip ./inspector-sbomgen.zip && \
  chmod +x ./inspector-sbomgen-*/linux/amd64/inspector-sbomgen && \
  cp ./inspector-sbomgen-*/linux/amd64/inspector-sbomgen /usr/local/bin/inspector-sbomgen

ENTRYPOINT ["/usr/local/bin/inspector-sbomgen", "directory", "--path", "/tmp/artifacts", "-o", "/tmp/output/sbom.json"]
