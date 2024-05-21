package androidx.media3.datasource;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final Supplier<ListeningExecutorService> DEFAULT_EXECUTOR_SERVICE = Suppliers.memoize(new Supplier() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda1
        @Override // com.google.common.base.Supplier
        public final Object get() {
            ListeningExecutorService listeningDecorator;
            listeningDecorator = MoreExecutors.listeningDecorator(Executors.newSingleThreadExecutor());
            return listeningDecorator;
        }
    });
    private final DataSource.Factory dataSourceFactory;
    private final ListeningExecutorService listeningExecutorService;

    public DataSourceBitmapLoader(Context context) {
        this((ListeningExecutorService) Assertions.checkStateNotNull(DEFAULT_EXECUTOR_SERVICE.get()), new DefaultDataSource.Factory(context));
    }

    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory) {
        this.listeningExecutorService = listeningExecutorService;
        this.dataSourceFactory = factory;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(final byte[] bArr) {
        return this.listeningExecutorService.submit(new Callable() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap decode;
                decode = DataSourceBitmapLoader.decode(bArr);
                return decode;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadBitmap$2$androidx-media3-datasource-DataSourceBitmapLoader, reason: not valid java name */
    public /* synthetic */ Bitmap m5195x731908d1(Uri uri) throws Exception {
        return load(this.dataSourceFactory.createDataSource(), uri);
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(final Uri uri) {
        return this.listeningExecutorService.submit(new Callable() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DataSourceBitmapLoader.this.m5195x731908d1(uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap decode(byte[] bArr) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Assertions.checkArgument(decodeByteArray != null, "Could not decode image data");
        return decodeByteArray;
    }

    private static Bitmap load(DataSource dataSource, Uri uri) throws IOException {
        dataSource.open(new DataSpec(uri));
        return decode(DataSourceUtil.readToEnd(dataSource));
    }
}
