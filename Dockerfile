FROM alpine
RUN apk add --update nodejs npm go dotnet6-sdk openjdk11-jre-headless maven python3 py3-pip bash unzip curl shadow neovim neovim-doc git 
COPY . /root/.config/nvim
RUN echo "alias vim='nvim'" >> ~/.bashrc && echo "export APPIMAGE_EXTRACT_AND_RUN=1" >> ~/.bashrc
