FROM jderobot/ubuntu:ros-noetic-cuda11-devel

ENV DEBIAN_FRONTEND=noninteractive
	
RUN apt-get update && apt-get install -y \
	cmake \
	icewm \
	git \
	psmisc \
 	python3-setuptools \
	python3-pip \
	python3-rviz \
	python3-opengl \
	pyqt5-dev-tools \
	tmux \
	vim \
	x11vnc \
	xvfb && \
    pip3 install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*

# Install python dependencies
COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
    
RUN echo 'alias jl="DISPLAY=:0 jupyter lab --no-browser --ip 0.0.0.0 --port 8888 --allow-root &"' >> /root/.bashrc && \
    echo "alias killgazebogym='killall -9 rosout roslaunch rosmaster gzserver nodelet robot_state_publisher gzclient'" >> ~/.bashrc && \
    echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc && \
	git clone https://github.com/strasdat/Sophus && \
	cd Sophus && mkdir build && cd build && \
	cmake ../ && make && make install

COPY ./vnc_startup.sh /

WORKDIR /root

ENTRYPOINT ["../vnc_startup.sh"]
CMD ["bash"]