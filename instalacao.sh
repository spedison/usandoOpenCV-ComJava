#!/bin/bash

echo "Este script instala todas as depencias para executar o OpenCV com todas as opções disponíveis em um Linux Debian 11.7"
echo "Funcionou perfeitamente e não precisou de horas de compilação ajustando as depencias"
echo "Limitação inicial - Usao o Java17. Hoje estamos no Java 20"
echo "Consegui realizar uma execução remota usando o Java, para não 'poluir' a minha máquina do dia-a-dia com todas essas bibliotecas"
echo "A versão do OpenCV é a 4.5.1"

PROGRAMS_FOR_INSTALL_GROUP_1=(
	vim
	openjdk-17-dbg openjdk-17-jdk openjdk-17-jdk-headless openjdk-17-source
	ant
	libnative-platform-jni
	libvisualvm-jni libgkl-jni
	git gcc g++ gfortran ffmpeg cmake make python3-dev python3-numpy libavcodec-dev libavformat-dev libswscale-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libgtk-3-dev libpng-dev libjpeg-dev libopenexr-dev libtiff-dev libwebp-dev
	gimagereader libavfilter-extra7 libtesseract-dev libtesseract4 tesseract-ocr tesseract-ocr-all
	nasm 
)

for program_name in ${PROGRAMS_FOR_INSTALL_GROUP_1[@]}; do
  if ! dpkg -l | grep -q $program_name; then # only install if not already installed
    apt install "$program_name" -y
  else
    echo "[installed] - $program_name"
  fi
done

echo "Bibliotecas de armazenamento encadeado para grandes volumes de dados"

PROGRAMS_FOR_INSTALL_GROUP_2=(
	libsis-jhdf5-java
	libhdf5-java
	libhdf5-dev
	hdf5-tools
	hdf5-helpers
	h5utils
)

for program_name in ${PROGRAMS_FOR_INSTALL_GROUP_2[@]}; do
  if ! dpkg -l | grep -q $program_name; then # only install if not already installed
    apt install "$program_name" -y
  else
    echo "[installed] - $program_name"
  fi
done

echo "Bibliotecas de Algebra Linear."

PROGRAMS_FOR_INSTALL_GROUP_3=(
	jblas
	libatlas-base-dev
	libatlas3-base
	libopenblas-base
	libopenblas-dev
	libopenblas-openmp-dev
	libopenblas-pthread-dev
	libopenblas0
	libopenblas0-openmp
	libopenblas0-pthread
	libopenblas64-0
	libopenblas64-0-openmp
	libopenblas64-0-pthread
	libopenblas64-dev
	libopenblas64-openmp-dev
	libopenblas64-pthread-dev
	valgrind
	libgmp-dev
	libgsl-dev
	libblas-dev
	gobject-introspection
	flex
	libeigen3-dev
)

for program_name in ${PROGRAMS_FOR_INSTALL_GROUP_3[@]}; do
  if ! dpkg -l | grep -q $program_name; then # only install if not already installed
    apt install "$program_name" -y
  else
    echo "[installed] - $program_name"
  fi
done

echo "GStream para acessar a câmera"

PROGRAMS_FOR_INSTALL_GROUP_4=(
	gstreamer1.0-gl
	gstreamer1.0-alsa
	gstreamer1.0-gtk3
	gstreamer1.0-libav
	gstreamer1.0-opencv
	gstreamer1.0-pipewire
	gstreamer1.0-tools
	gstreamer1.0-x
	libcanberra-gstreamer
	libclutter-gst-3.0-0
	libclutter-gst-3.0-dev
)

for program_name in ${PROGRAMS_FOR_INSTALL_GROUP_4[@]}; do
  if ! dpkg -l | grep -q $program_name; then # only install if not already installed
    apt install "$program_name" -y
  else
    echo "[installed] - $program_name"
  fi
done

echo "Instalando o OpenCV"

PROGRAMS_FOR_INSTALL_GROUP_5=(
	gstreamer1.0-opencv
	libgstreamer-opencv1.0-0
	libopencv-calib3d-dev
	libopencv-calib3d4.5
	libopencv-contrib-dev
	libopencv-contrib4.5
	libopencv-core-dev
	libopencv-core4.5
	libopencv-dev
	libopencv-dnn-dev
	libopencv-dnn4.5
	libopencv-features2d-dev
	libopencv-features2d4.5
	libopencv-flann-dev
	libopencv-flann4.5
	libopencv-highgui-dev
	libopencv-highgui4.5
	libopencv-imgcodecs-dev
	libopencv-imgcodecs4.5
	libopencv-imgproc-dev
	libopencv-imgproc4.5
	libopencv-ml-dev
	libopencv-ml4.5
	libopencv-objdetect-dev
	libopencv-objdetect4.5
	libopencv-photo-dev
	libopencv-photo4.5
	libopencv-shape-dev
	libopencv-shape4.5
	libopencv-stitching-dev
	libopencv-stitching4.5
	libopencv-superres-dev
	libopencv-superres4.5
	libopencv-video-dev
	libopencv-video4.5
	libopencv-videoio-dev
	libopencv-videoio4.5
	libopencv-videostab-dev
	libopencv-videostab4.5
	libopencv-viz-dev
	libopencv-viz4.5
	libopencv4.5-java
	libopencv4.5-jni
	opencv-data
	opencv-doc
	python3-opencv
	cl-opencv-apps
	libopencv-apps-dev
	libopencv-apps2d
	python3-opencv-apps
	ros-opencv-apps
)

for program_name in ${PROGRAMS_FOR_INSTALL_GROUP_5[@]}; do
  if ! dpkg -l | grep -q $program_name; then # only install if not already installed
    apt install "$program_name" -y
  else
    echo "[installed] - $program_name"
  fi
done

echo "para compartilhar os arquivos via nfs"
apt install -y nfs-kernel-server
