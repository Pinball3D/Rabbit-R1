package com.davemorrissey.labs.subscaleview.decoder;

import android.graphics.Bitmap;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class CompatDecoderFactory<T> implements DecoderFactory<T> {
    private final Bitmap.Config bitmapConfig;
    private final Class<? extends T> clazz;

    public CompatDecoderFactory(Class<? extends T> cls) {
        this(cls, null);
    }

    public CompatDecoderFactory(Class<? extends T> cls, Bitmap.Config config) {
        this.clazz = cls;
        this.bitmapConfig = config;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.DecoderFactory
    public T make() throws IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        if (this.bitmapConfig == null) {
            return this.clazz.newInstance();
        }
        return this.clazz.getConstructor(Bitmap.Config.class).newInstance(this.bitmapConfig);
    }
}
