package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONAware;
import com.alibaba.fastjson.annotation.JSONField;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes2.dex */
public class FieldInfo implements Comparable<FieldInfo> {
    public final String[] alternateNames;
    public final Class<?> declaringClass;
    public final Field field;
    public final boolean fieldAccess;
    private final JSONField fieldAnnotation;
    public final Class<?> fieldClass;
    public final boolean fieldTransient;
    public final Type fieldType;
    public final String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final Method method;
    private final JSONField methodAnnotation;
    public final String name;
    public final long nameHashCode;
    private int ordinal;
    public final int serialzeFeatures;

    public JSONField getAnnotation() {
        JSONField jSONField = this.fieldAnnotation;
        return jSONField != null ? jSONField : this.methodAnnotation;
    }

    public String toString() {
        return this.name;
    }

    public FieldInfo(String str, Class<?> cls, Class<?> cls2, Type type, Field field, int i, int i2) {
        this.ordinal = 0;
        i = i < 0 ? 0 : i;
        this.name = str;
        this.declaringClass = cls;
        this.fieldClass = cls2;
        this.fieldType = type;
        this.method = null;
        this.field = field;
        this.ordinal = i;
        this.serialzeFeatures = i2;
        this.isEnum = cls2.isEnum() && !JSONAware.class.isAssignableFrom(cls2);
        this.fieldAnnotation = null;
        this.methodAnnotation = null;
        if (field != null) {
            int modifiers = field.getModifiers();
            this.fieldAccess = true;
            this.fieldTransient = Modifier.isTransient(modifiers);
        } else {
            this.fieldAccess = false;
            this.fieldTransient = false;
        }
        this.getOnly = false;
        long j = -3750763034362895579L;
        for (int i3 = 0; i3 < str.length(); i3++) {
            j = (j ^ str.charAt(i3)) * 1099511628211L;
        }
        this.nameHashCode = j;
        this.format = null;
        this.alternateNames = new String[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0133, code lost:
    
        r13 = r4.declaringClass.getTypeParameters();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013b, code lost:
    
        if (r14 >= r13.length) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0143, code lost:
    
        if (r6.equals(r13[r14]) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0148, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0145, code lost:
    
        r11 = r12[r14];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FieldInfo(java.lang.String r5, java.lang.reflect.Method r6, java.lang.reflect.Field r7, java.lang.Class<?> r8, java.lang.reflect.Type r9, int r10, int r11, com.alibaba.fastjson.annotation.JSONField r12, com.alibaba.fastjson.annotation.JSONField r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.FieldInfo.<init>(java.lang.String, java.lang.reflect.Method, java.lang.reflect.Field, java.lang.Class, java.lang.reflect.Type, int, int, com.alibaba.fastjson.annotation.JSONField, com.alibaba.fastjson.annotation.JSONField, boolean):void");
    }

    public static Type getFieldType(Class<?> cls, Type type, Type type2) {
        TypeVariable<Class<? super Object>>[] typeVariableArr;
        ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type fieldType = getFieldType(cls, type, genericComponentType);
                return genericComponentType != fieldType ? Array.newInstance(TypeUtils.getClass(fieldType), 0).getClass() : type2;
            }
            if (!TypeUtils.isGenericParamType(type)) {
                return type2;
            }
            if (type2 instanceof TypeVariable) {
                ParameterizedType parameterizedType2 = (ParameterizedType) TypeUtils.getGenericParamType(type);
                Class<?> cls2 = TypeUtils.getClass(parameterizedType2);
                TypeVariable typeVariable = (TypeVariable) type2;
                for (int i = 0; i < cls2.getTypeParameters().length; i++) {
                    if (cls2.getTypeParameters()[i].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i];
                    }
                }
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                Type[] typeArr = null;
                if (type instanceof ParameterizedType) {
                    parameterizedType = (ParameterizedType) type;
                    typeVariableArr = cls.getTypeParameters();
                } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                    parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                    typeVariableArr = cls.getSuperclass().getTypeParameters();
                } else {
                    typeVariableArr = null;
                    parameterizedType = null;
                }
                boolean z = false;
                for (int i2 = 0; i2 < actualTypeArguments.length && parameterizedType != null; i2++) {
                    Type type3 = actualTypeArguments[i2];
                    if (type3 instanceof TypeVariable) {
                        TypeVariable typeVariable2 = (TypeVariable) type3;
                        for (int i3 = 0; i3 < typeVariableArr.length; i3++) {
                            if (typeVariableArr[i3].getName().equals(typeVariable2.getName())) {
                                if (typeArr == null) {
                                    typeArr = parameterizedType.getActualTypeArguments();
                                }
                                actualTypeArguments[i2] = typeArr[i3];
                                z = true;
                            }
                        }
                    }
                }
                if (z) {
                    return new ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType());
                }
            }
        }
        return type2;
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldInfo fieldInfo) {
        int i = this.ordinal;
        int i2 = fieldInfo.ordinal;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        return this.name.compareTo(fieldInfo.name);
    }

    public boolean equals(FieldInfo fieldInfo) {
        return fieldInfo == this || compareTo(fieldInfo) == 0;
    }

    public Object get(Object obj) throws IllegalAccessException, InvocationTargetException {
        if (this.fieldAccess) {
            return this.field.get(obj);
        }
        return this.method.invoke(obj, new Object[0]);
    }

    public void set(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        Method method = this.method;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.field.set(obj, obj2);
        }
    }
}
