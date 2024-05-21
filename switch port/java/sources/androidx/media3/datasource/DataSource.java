package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.DataReader;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface DataSource extends DataReader {

    /* loaded from: classes2.dex */
    public interface Factory {
        DataSource createDataSource();
    }

    void addTransferListener(TransferListener transferListener);

    void close() throws IOException;

    Uri getUri();

    long open(DataSpec dataSpec) throws IOException;

    default Map<String, List<String>> getResponseHeaders() {
        return Collections.emptyMap();
    }
}
