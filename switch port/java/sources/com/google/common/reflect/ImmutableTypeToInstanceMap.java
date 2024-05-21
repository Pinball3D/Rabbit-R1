package com.google.common.reflect;

import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ImmutableMap;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class ImmutableTypeToInstanceMap<B> extends ForwardingMap<TypeToken<? extends B>, B> implements TypeToInstanceMap<B> {
    private final ImmutableMap<TypeToken<? extends B>, B> delegate;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public Map<TypeToken<? extends B>, B> delegate() {
        return this.delegate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    @CheckForNull
    @Deprecated
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((TypeToken<? extends TypeToken<? extends B>>) obj, (TypeToken<? extends B>) obj2);
    }

    public static <B> ImmutableTypeToInstanceMap<B> of() {
        return new ImmutableTypeToInstanceMap<>(ImmutableMap.of());
    }

    public static <B> Builder<B> builder() {
        return new Builder<>();
    }

    /* loaded from: classes3.dex */
    public static final class Builder<B> {
        private final ImmutableMap.Builder<TypeToken<? extends B>, B> mapBuilder;

        private Builder() {
            this.mapBuilder = ImmutableMap.builder();
        }

        public <T extends B> Builder<B> put(Class<T> cls, T t) {
            this.mapBuilder.put(TypeToken.of((Class) cls), t);
            return this;
        }

        public <T extends B> Builder<B> put(TypeToken<T> typeToken, T t) {
            this.mapBuilder.put(typeToken.rejectTypeVariables(), t);
            return this;
        }

        public ImmutableTypeToInstanceMap<B> build() {
            return new ImmutableTypeToInstanceMap<>(this.mapBuilder.buildOrThrow());
        }
    }

    private ImmutableTypeToInstanceMap(ImmutableMap<TypeToken<? extends B>, B> immutableMap) {
        this.delegate = immutableMap;
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CheckForNull
    public <T extends B> T getInstance(TypeToken<T> typeToken) {
        return (T) trustedGet(typeToken.rejectTypeVariables());
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CheckForNull
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) trustedGet(TypeToken.of((Class) cls));
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CheckForNull
    @Deprecated
    public <T extends B> T putInstance(TypeToken<T> typeToken, T t) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CheckForNull
    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t) {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    @Deprecated
    public B put(TypeToken<? extends B> typeToken, B b) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    @Deprecated
    public void putAll(Map<? extends TypeToken<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    private <T extends B> T trustedGet(TypeToken<T> typeToken) {
        return this.delegate.get(typeToken);
    }
}
