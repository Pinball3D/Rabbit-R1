package androidx.media3.datasource;

import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import com.google.common.base.Charsets;
import java.io.IOException;
import java.net.URLDecoder;

/* loaded from: classes2.dex */
public final class DataSchemeDataSource extends BaseDataSource {
    public static final String SCHEME_DATA = "data";
    private int bytesRemaining;
    private byte[] data;
    private DataSpec dataSpec;
    private int readPosition;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        transferInitializing(dataSpec);
        this.dataSpec = dataSpec;
        Uri normalizeScheme = dataSpec.uri.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        Assertions.checkArgument("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] split = Util.split(normalizeScheme.getSchemeSpecificPart(), ",");
        if (split.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + normalizeScheme, null);
        }
        String str = split[1];
        if (split[0].contains(";base64")) {
            try {
                this.data = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e);
            }
        } else {
            this.data = Util.getUtf8Bytes(URLDecoder.decode(str, Charsets.US_ASCII.name()));
        }
        if (dataSpec.position > this.data.length) {
            this.data = null;
            throw new DataSourceException(2008);
        }
        int i = (int) dataSpec.position;
        this.readPosition = i;
        this.bytesRemaining = this.data.length - i;
        if (dataSpec.length != -1) {
            this.bytesRemaining = (int) Math.min(this.bytesRemaining, dataSpec.length);
        }
        transferStarted(dataSpec);
        return dataSpec.length != -1 ? dataSpec.length : this.bytesRemaining;
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.bytesRemaining;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(Util.castNonNull(this.data), this.readPosition, bArr, i, min);
        this.readPosition += min;
        this.bytesRemaining -= min;
        bytesTransferred(min);
        return min;
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        DataSpec dataSpec = this.dataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        if (this.data != null) {
            this.data = null;
            transferEnded();
        }
        this.dataSpec = null;
    }
}
