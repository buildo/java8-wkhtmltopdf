FROM openjdk:8

# Download and install wkhtmltopdf
RUN apt-get update \
    && apt-get install -y \
        curl \
        xfonts-base \
        xfonts-75dpi \
    && apt-get clean

RUN curl "https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" -L -o "wkhtmltopdf.deb"
RUN dpkg -i ./wkhtmltopdf.deb
RUN apt-get install -f
RUN rm -rf wkhtmlto*

