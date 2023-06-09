package br.com.spedison;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.videoio.VideoCapture;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.videoio.Videoio;

public class CapturaFoto {
    public static void main(String[] args) {
        // Carrega a biblioteca OpenCV
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);

        // Cria um objeto de captura de vídeo
        VideoCapture captura = new VideoCapture(0);

        // Verifica se a câmera foi aberta corretamente
        if (!captura.isOpened()) {
            System.out.println("Não foi possível abrir a câmera.");
            return;
        }


        // Resoluções para testar
        int[] [] resolutions = {
                {320, 240},      // QVGA (240p)
                {640, 480},     // VGA (480p)
                {1280, 720},    // 720p
                {1920, 1080}   // 1080p
        };

        System.out.println("Resoluções disponíveis para a câmera:");
        Mat frame = new Mat();
        int max = 0;
        for (int i = 0; i < resolutions.length; i ++) {
            int width = resolutions[i][0];
            int height = resolutions[i][1];

            // Define a resolução da câmera
            captura.set(Videoio.CAP_PROP_FRAME_WIDTH, width);
            captura.set(Videoio.CAP_PROP_FRAME_HEIGHT, height);
            // captura.set(Videoio.CAP_PROP_ZOOM,2.0);

            // Tenta capturar um frame com a resolução definida

            if (captura.read(frame)) {
                // Imprime a resolução suportada
                System.out.println("Resolução: [ " + width + " x " + height+" ]");
                max = i;
            } //else {
              //  System.out.println("Resolução não suportada: " + width + "x" + height);
            //}
        }
        // Libera a memória alocada para o frame
        frame.release();

        // Cria uma matriz para armazenar o frame da câmera
        frame = new Mat();

        captura.set(3, resolutions[max][0]);
        captura.set(4, resolutions[max][1]);

        // Captura um frame da câmera
        if (captura.read(frame)) {
            // Salva a imagem em um arquivo
            Imgcodecs.imwrite("/home/spedison/fotos/foto3.jpg", frame);
            System.out.println("Foto capturada com sucesso!");
        } else {
            System.out.println("Não foi possível capturar a imagem.");
        }

        // Libera o objeto de captura de vídeo e fecha a câmera
        captura.release();

        System.out.println(Core.getBuildInformation());
    }
}
