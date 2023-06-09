echo "Este script instala todas as depencias para executar o OpenCV com todas as opções disponíveis em um Linux Debian 11.7"
echo "Funcionou perfeitamente e não precisou de horas de compilação ajustando as depencias"
echo "Limitação inicial - Usao o Java17. Hoje estamos no Java 20"
echo "Consegui realizar uma execução remota usando o Java, para não 'poluir' a minha máquina do dia-a-dia com todas essas bliotecas"
echo "A versão do OpenCV é a 4.5.1"

apt install -y vim
apt install -y openjdk-17-dbg openjdk-17-jdk openjdk-17-jdk-headless openjdk-17-source
apt install -y ant
apt install -y libnative-platform-jni
apt install -y libvisualvm-jni libgkl-jni
apt install -y git gcc g++ gfortran ffmpeg cmake make python3-dev python3-numpy libavcodec-dev libavformat-dev libswscale-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libgtk-3-dev libpng-dev libjpeg-dev libopenexr-dev libtiff-dev libwebp-dev
apt install -y  gimagereader libavfilter-extra7 libtesseract-dev libtesseract4 tesseract-ocr tesseract-ocr-all
apt install -y nasm

echo "Bibliotecas de armazenamento encadeado para grandes volumes de dados"
apt install -y libsis-jhdf5-java
apt install -y libhdf5-java
apt install -y libhdf5-dev
apt install -y hdf5-tools
apt install -y hdf5-helpers
apt install -y h5utils

echo "Bibliotecas de Algebra Linear."
apt install -y jblas
apt install -y libatlas-base-dev
apt install -y libatlas3-base
apt install -y libopenblas-base
apt install -y libopenblas-dev
apt install -y libopenblas-openmp-dev
apt install -y libopenblas-pthread-dev
apt install -y libopenblas0
apt install -y libopenblas0-openmp
apt install -y libopenblas0-pthread
apt install -y libopenblas64-0
apt install -y libopenblas64-0-openmp
apt install -y libopenblas64-0-pthread
apt install -y libopenblas64-dev
apt install -y libopenblas64-openmp-dev
apt install -y libopenblas64-pthread-dev

apt install -y valgrind
apt install -y libgmp-dev
apt install -y libgsl-dev
apt install -y libblas-dev
apt install -y gobject-introspection
apt install -y flex
apt install -y libeigen3-dev

echo "GStream para acessar a câmera"
apt install -y gstreamer1.0-gl
apt install -y gstreamer1.0-alsa
apt install -y gstreamer1.0-gtk3
apt install -y gstreamer1.0-libav
apt install -y gstreamer1.0-opencv
apt install -y gstreamer1.0-pipewire
apt install -y gstreamer1.0-tools
apt install -y gstreamer1.0-x
apt install -y libcanberra-gstreamer
apt install -y libclutter-gst-3.0-0
apt install -y libclutter-gst-3.0-dev

echo "Instalando o OpenCV"
apt install -y gstreamer1.0-opencv
apt install -y libgstreamer-opencv1.0-0
apt install -y libopencv-calib3d-dev
apt install -y libopencv-calib3d4.5
apt install -y libopencv-contrib-dev
apt install -y libopencv-contrib4.5
apt install -y libopencv-core-dev
apt install -y libopencv-core4.5
apt install -y libopencv-dev
apt install -y libopencv-dnn-dev
apt install -y libopencv-dnn4.5
apt install -y libopencv-features2d-dev
apt install -y libopencv-features2d4.5
apt install -y libopencv-flann-dev
apt install -y libopencv-flann4.5
apt install -y libopencv-highgui-dev
apt install -y libopencv-highgui4.5
apt install -y libopencv-imgcodecs-dev
apt install -y libopencv-imgcodecs4.5
apt install -y libopencv-imgproc-dev
apt install -y libopencv-imgproc4.5
apt install -y libopencv-ml-dev
apt install -y libopencv-ml4.5
apt install -y libopencv-objdetect-dev
apt install -y libopencv-objdetect4.5
apt install -y libopencv-photo-dev
apt install -y libopencv-photo4.5
apt install -y libopencv-shape-dev
apt install -y libopencv-shape4.5
apt install -y libopencv-stitching-dev
apt install -y libopencv-stitching4.5
apt install -y libopencv-superres-dev
apt install -y libopencv-superres4.5
apt install -y libopencv-video-dev
apt install -y libopencv-video4.5
apt install -y libopencv-videoio-dev
apt install -y libopencv-videoio4.5
apt install -y libopencv-videostab-dev
apt install -y libopencv-videostab4.5
apt install -y libopencv-viz-dev
apt install -y libopencv-viz4.5
apt install -y libopencv4.5-java
apt install -y libopencv4.5-jni
apt install -y opencv-data
apt install -y opencv-doc
apt install -y python3-opencv
apt install -y cl-opencv-apps
apt install -y libopencv-apps-dev
apt install -y libopencv-apps2d
apt install -y python3-opencv-apps
apt install -y ros-opencv-apps

echo "para compartilhar os arquivos via nfs"
apt install -y nfs-kernel-server
