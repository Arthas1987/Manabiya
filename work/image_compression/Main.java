package cn.arthas;


import cn.arthas.image.util.PNGImageWriterParam;

import javax.imageio.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Main {
    public static void main(String[] args) throws IOException {

        var outFile = new File("/Users/zhangnan/dev/output.png");
        final var formatName = "png";

        List<URL> imageUrls = List.of(new URL("https://homepages.cae.wisc.edu/~ece533/images/airplane.png"));
        List<BufferedImage> imageList = new ArrayList<>();
        for (URL imageUrl : imageUrls) {
            BufferedImage read = ImageIO.read(imageUrl);
            imageList.add(read);
        }

        BufferedImage im = imageList.get(0);
        var type = ImageTypeSpecifier.createFromRenderedImage(im);
        Iterator<ImageWriter> iter = ImageIO.getImageWriters(type, formatName);
        ImageWriter writer = iter.next();

        if (outFile.exists()) {
            Files.delete(outFile.toPath());
        }

        var stream = ImageIO.createImageOutputStream(outFile);
        writer.setOutput(stream);
        var param = new PNGImageWriterParam();
        param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
        param.setCompressionQuality(1.0f);

        try {
            writer.write(null, new IIOImage(im, null, null), param);
        } finally {
            writer.dispose();
            stream.flush();
        }

    }

}
