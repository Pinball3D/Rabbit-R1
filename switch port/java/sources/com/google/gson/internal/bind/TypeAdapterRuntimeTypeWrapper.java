package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {
    private final Gson context;
    private final TypeAdapter<T> delegate;
    private final Type type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.context = gson;
        this.delegate = typeAdapter;
        this.type = type;
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        return this.delegate.read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        TypeAdapter<T> typeAdapter = this.delegate;
        Type runtimeTypeIfMoreSpecific = getRuntimeTypeIfMoreSpecific(this.type, t);
        if (runtimeTypeIfMoreSpecific != this.type) {
            typeAdapter = this.context.getAdapter(TypeToken.get(runtimeTypeIfMoreSpecific));
            if (typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) {
                TypeAdapter<T> typeAdapter2 = this.delegate;
                if (!(typeAdapter2 instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                    typeAdapter = typeAdapter2;
                }
            }
        }
        typeAdapter.write(jsonWriter, t);
    }

    private Type getRuntimeTypeIfMoreSpecific(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }
}
