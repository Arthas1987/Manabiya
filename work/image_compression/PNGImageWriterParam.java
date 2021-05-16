package cn.arthas.image.util;

import javax.imageio.ImageWriteParam;

public class PNGImageWriterParam extends ImageWriteParam {

    /**
     * Returns {@code true} if this writer supports compression.
     *
     * @return {@code true} if the writer supports compression.
     */
    @Override
    public boolean canWriteCompressed() {
        return true;
    }

    /**
     * Returns {@code true} if the writer can write out images
     * as a series of passes of progressively increasing quality.
     *
     * @return {@code true} if the writer supports progressive
     * encoding.
     * @see #setProgressiveMode
     * @see #getProgressiveMode
     */
    @Override
    public boolean canWriteProgressive() {
        return true;
    }
}
