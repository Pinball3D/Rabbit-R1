package io.sentry;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public final class OptionsContainer<T> {
    private final Class<T> clazz;

    public static <T> OptionsContainer<T> create(Class<T> cls) {
        return new OptionsContainer<>(cls);
    }

    private OptionsContainer(Class<T> cls) {
        this.clazz = cls;
    }

    public T createInstance() throws InstantiationException, IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return this.clazz.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
    }
}
