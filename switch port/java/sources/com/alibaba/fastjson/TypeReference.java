package com.alibaba.fastjson;

import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public class TypeReference<T> {
    static ConcurrentMap<Type, Type> classTypeCache = new ConcurrentHashMap(16, 0.75f, 1);
    protected final Type type;

    public Type getType() {
        return this.type;
    }

    protected TypeReference() {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        if (type instanceof Class) {
            this.type = type;
            return;
        }
        Type type2 = classTypeCache.get(type);
        if (type2 == null) {
            classTypeCache.putIfAbsent(type, type);
            type2 = classTypeCache.get(type);
        }
        this.type = type2;
    }

    protected TypeReference(Type... typeArr) {
        Class<?> cls = getClass();
        ParameterizedType parameterizedType = (ParameterizedType) ((ParameterizedType) cls.getGenericSuperclass()).getActualTypeArguments()[0];
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int i = 0;
        for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
            if ((actualTypeArguments[i2] instanceof TypeVariable) && i < typeArr.length) {
                actualTypeArguments[i2] = typeArr[i];
                i++;
            }
            Type type = actualTypeArguments[i2];
            if (type instanceof GenericArrayType) {
                actualTypeArguments[i2] = TypeUtils.checkPrimitiveArray((GenericArrayType) type);
            }
            Type type2 = actualTypeArguments[i2];
            if (type2 instanceof ParameterizedType) {
                actualTypeArguments[i2] = handlerParameterizedType((ParameterizedType) type2, typeArr, i);
            }
        }
        ParameterizedTypeImpl parameterizedTypeImpl = new ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
        Type type3 = classTypeCache.get(parameterizedTypeImpl);
        if (type3 == null) {
            classTypeCache.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
            type3 = classTypeCache.get(parameterizedTypeImpl);
        }
        this.type = type3;
    }

    private Type handlerParameterizedType(ParameterizedType parameterizedType, Type[] typeArr, int i) {
        Class<?> cls = getClass();
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
            if ((actualTypeArguments[i2] instanceof TypeVariable) && i < typeArr.length) {
                actualTypeArguments[i2] = typeArr[i];
                i++;
            }
            Type type = actualTypeArguments[i2];
            if (type instanceof GenericArrayType) {
                actualTypeArguments[i2] = TypeUtils.checkPrimitiveArray((GenericArrayType) type);
            }
            Type type2 = actualTypeArguments[i2];
            if (type2 instanceof ParameterizedType) {
                return handlerParameterizedType((ParameterizedType) type2, typeArr, i);
            }
        }
        return new ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
    }
}
