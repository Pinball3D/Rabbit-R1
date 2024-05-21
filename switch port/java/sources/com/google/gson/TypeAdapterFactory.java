package com.google.gson;

import com.google.gson.reflect.TypeToken;

/* loaded from: classes3.dex */
public interface TypeAdapterFactory {
    <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken);
}
