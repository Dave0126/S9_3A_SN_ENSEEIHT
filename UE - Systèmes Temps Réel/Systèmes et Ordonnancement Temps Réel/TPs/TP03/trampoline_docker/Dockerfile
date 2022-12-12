FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa
#RUN apt-get update
RUN apt-get install -y \
                       man \
                       build-essential \
                       cmake \
                       git \
                       libc++-dev \
                       lcov \
                       cppcheck \
                       doxygen \
                       nano \
                       wget \
                       udev \
                       tar \
                       libusb-dev \
                       m4 \
                       python \
                       sudo
RUN mkdir -p /usr/src
WORKDIR /usr/src
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
RUN tar xvf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
RUN rm gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
RUN mkdir gcc-arm-none-eabi
RUN mkdir gcc-arm-none-eabi/DEBIAN
RUN mkdir gcc-arm-none-eabi/usr
RUN echo "Package: gcc-arm-none-eabi"          >  gcc-arm-none-eabi/DEBIAN/control
RUN echo "Version: 1:10.3-2021.10-9"          >> gcc-arm-none-eabi/DEBIAN/control
RUN echo "Architecture: amd64"                 >> gcc-arm-none-eabi/DEBIAN/control
RUN echo "Maintainer: maintainer"              >> gcc-arm-none-eabi/DEBIAN/control
RUN echo "Description: Arm Embedded toolchain" >> gcc-arm-none-eabi/DEBIAN/control
RUN mv gcc-arm-none-eabi-*/* gcc-arm-none-eabi/usr/
RUN dpkg-deb --build --root-owner-group gcc-arm-none-eabi
RUN apt install ./gcc-arm-none-eabi.deb -y --allow-downgrades
RUN rm -r *
WORKDIR /
RUN git clone https://github.com/TrampolineRTOS/trampoline
RUN mkdir /mnt/shared
VOLUME ["/mnt/shared"]
WORKDIR trampoline/goil/makefile-unix
RUN ./install.py
WORKDIR /trampoline/machines/arm/nxt
RUN sed -i 59i'ecrobot_HiTechnic.c \\' Makefile
WORKDIR /
RUN wget https://www-verimag.imag.fr/~raymond/files/t2n/files/t2n-0.6.src.tgz && tar zxvf t2n-0.6.src.tgz
WORKDIR t2n-0.6.src
RUN sed -i "s/bool do_battery, do_info, do_ls/bool do_battery, do_info, do_ls, do_y/" src/t2n.cc
RUN sed -i "s/do_ls);/do_ls);myargs.add_bool(\"-y\", \"force yes\", \&do_y);/" src/t2n.cc
RUN sed -i "s/if (do_battery)/zebrick.yes=do_y;if (do_battery)/" src/t2n.cc
RUN sed -i "s/int init();/int init();bool yes;/" src/usbnxt.h
RUN sed -i "s/AskYesNo/yes || AskYesNo/g" src/usbnxt.cc
RUN make && mv obj/t2n /bin && mv obj/t2n.static /bin && mv obj/usbscan /bin && make clean && rm /t2n-0.6.src.tgz && cp udev/* /etc/udev/rules.d
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY scripts/nxt* /usr/local/bin/
RUN mkdir /usr/local/share/app_template
COPY app_template/* /usr/local/share/app_template/
RUN echo "export NXT_TEMPLATE_PATH=/usr/local/share/app_template" >> /root/.bashrc
RUN echo "export NXT_TRAMPOLINE_PATH=/trampoline" >> /root/.bashrc
RUN echo "export NXT_GCC_PATH=/ust/arm-none-eabi" >> /root/.bashrc
RUN echo "echo \"Create NXT project   : nxt_create project_name\"" >> /root/.bashrc
RUN echo "echo \"Compile NXT .oil file: nxt_goil myfile.oil\"" >> /root/.bashrc
RUN echo "echo \"Build executable file: make \"" >> /root/.bashrc
RUN echo "echo \"Adapt NXT .oil to env: nxt_reenv myfile.oil\"" >> /root/.bashrc
RUN echo "echo \"Download .rxe file   : nxt_send myfile.rxe\"" >> /root/.bashrc
RUN echo "echo \"See NXT examples     : cd /trampoline/examples/arm/nxt\"" >> /root/.bashrc
WORKDIR /mnt/shared
