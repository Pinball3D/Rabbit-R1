package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class DataSourceUtil {
    private DataSourceUtil() {
    }

    public static byte[] readToEnd(DataSource dataSource) throws IOException {
        byte[] bArr = new byte[1024];
        int i = 0;
        int i2 = 0;
        while (i != -1) {
            if (i2 == bArr.length) {
                bArr = Arrays.copyOf(bArr, bArr.length * 2);
            }
            i = dataSource.read(bArr, i2, bArr.length - i2);
            if (i != -1) {
                i2 += i;
            }
        }
        return Arrays.copyOf(bArr, i2);
    }

    public static byte[] readExactly(DataSource dataSource, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = dataSource.read(bArr, i2, i - i2);
            if (read == -1) {
                throw new IllegalStateException("Not enough data could be read: " + i2 + " < " + i);
            }
            i2 += read;
        }
        return bArr;
    }

    public static void closeQuietly(DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException unused) {
            }
        }
    }
}
