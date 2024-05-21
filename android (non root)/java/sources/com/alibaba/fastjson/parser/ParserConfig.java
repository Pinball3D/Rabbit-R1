package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.ArrayCodec;
import com.alibaba.fastjson.serializer.BigDecimalCodec;
import com.alibaba.fastjson.serializer.BooleanCodec;
import com.alibaba.fastjson.serializer.CollectionCodec;
import com.alibaba.fastjson.serializer.DateCodec;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.MiscCodec;
import com.alibaba.fastjson.serializer.NumberCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IdentityHashMap;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class ParserConfig {
    private static long[] denyList = {-7600952144447537354L, -4082057040235125754L, -2364987994247679115L, -676156662527871184L, -254670111376247151L, 1502845958873959152L, 4147696707147271408L, 5347909877633654828L, 5751393439502795295L, 7702607466162283393L};
    public static ParserConfig global = new ParserConfig();
    public boolean autoTypeSupport;
    public ClassLoader defaultClassLoader;
    private final IdentityHashMap<ObjectDeserializer> deserializers;
    public PropertyNamingStrategy propertyNamingStrategy;
    public final SymbolTable symbolTable;

    public static ParserConfig getGlobalInstance() {
        return global;
    }

    public ParserConfig() {
        IdentityHashMap<ObjectDeserializer> identityHashMap = new IdentityHashMap<>(1024);
        this.deserializers = identityHashMap;
        this.symbolTable = new SymbolTable(16384);
        identityHashMap.put(SimpleDateFormat.class, MiscCodec.instance);
        identityHashMap.put(Date.class, DateCodec.instance);
        identityHashMap.put(Calendar.class, DateCodec.instance);
        identityHashMap.put(Map.class, MapDeserializer.instance);
        identityHashMap.put(HashMap.class, MapDeserializer.instance);
        identityHashMap.put(LinkedHashMap.class, MapDeserializer.instance);
        identityHashMap.put(TreeMap.class, MapDeserializer.instance);
        identityHashMap.put(ConcurrentMap.class, MapDeserializer.instance);
        identityHashMap.put(ConcurrentHashMap.class, MapDeserializer.instance);
        identityHashMap.put(Collection.class, CollectionCodec.instance);
        identityHashMap.put(List.class, CollectionCodec.instance);
        identityHashMap.put(ArrayList.class, CollectionCodec.instance);
        identityHashMap.put(Object.class, JavaObjectDeserializer.instance);
        identityHashMap.put(String.class, StringCodec.instance);
        identityHashMap.put(Character.TYPE, MiscCodec.instance);
        identityHashMap.put(Character.class, MiscCodec.instance);
        identityHashMap.put(Byte.TYPE, NumberCodec.instance);
        identityHashMap.put(Byte.class, NumberCodec.instance);
        identityHashMap.put(Short.TYPE, NumberCodec.instance);
        identityHashMap.put(Short.class, NumberCodec.instance);
        identityHashMap.put(Integer.TYPE, IntegerCodec.instance);
        identityHashMap.put(Integer.class, IntegerCodec.instance);
        identityHashMap.put(Long.TYPE, IntegerCodec.instance);
        identityHashMap.put(Long.class, IntegerCodec.instance);
        identityHashMap.put(BigInteger.class, BigDecimalCodec.instance);
        identityHashMap.put(BigDecimal.class, BigDecimalCodec.instance);
        identityHashMap.put(Float.TYPE, NumberCodec.instance);
        identityHashMap.put(Float.class, NumberCodec.instance);
        identityHashMap.put(Double.TYPE, NumberCodec.instance);
        identityHashMap.put(Double.class, NumberCodec.instance);
        identityHashMap.put(Boolean.TYPE, BooleanCodec.instance);
        identityHashMap.put(Boolean.class, BooleanCodec.instance);
        identityHashMap.put(Class.class, MiscCodec.instance);
        identityHashMap.put(char[].class, ArrayCodec.instance);
        identityHashMap.put(Object[].class, ArrayCodec.instance);
        identityHashMap.put(UUID.class, MiscCodec.instance);
        identityHashMap.put(TimeZone.class, MiscCodec.instance);
        identityHashMap.put(Locale.class, MiscCodec.instance);
        identityHashMap.put(Currency.class, MiscCodec.instance);
        identityHashMap.put(URI.class, MiscCodec.instance);
        identityHashMap.put(URL.class, MiscCodec.instance);
        identityHashMap.put(Pattern.class, MiscCodec.instance);
        identityHashMap.put(Charset.class, MiscCodec.instance);
        identityHashMap.put(Number.class, NumberCodec.instance);
        identityHashMap.put(StackTraceElement.class, MiscCodec.instance);
        identityHashMap.put(Serializable.class, JavaObjectDeserializer.instance);
        identityHashMap.put(Cloneable.class, JavaObjectDeserializer.instance);
        identityHashMap.put(Comparable.class, JavaObjectDeserializer.instance);
        identityHashMap.put(Closeable.class, JavaObjectDeserializer.instance);
    }

    public ObjectDeserializer getDeserializer(Type type) {
        ObjectDeserializer objectDeserializer = this.deserializers.get(type);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type instanceof Class) {
            return getDeserializer((Class) type, type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return getDeserializer((Class) rawType, type);
            }
            return getDeserializer(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getDeserializer(upperBounds[0]);
            }
        }
        return JavaObjectDeserializer.instance;
    }

    public ObjectDeserializer getDeserializer(Class<?> cls, Type type) {
        ObjectDeserializer objectDeserializer;
        JSONType jSONType;
        Class<?> mappingTo;
        ObjectDeserializer objectDeserializer2 = this.deserializers.get(type);
        if (objectDeserializer2 != null) {
            return objectDeserializer2;
        }
        if (type == null) {
            type = cls;
        }
        ObjectDeserializer objectDeserializer3 = this.deserializers.get(type);
        if (objectDeserializer3 != null) {
            return objectDeserializer3;
        }
        if (!isPrimitive(cls) && (jSONType = (JSONType) cls.getAnnotation(JSONType.class)) != null && (mappingTo = jSONType.mappingTo()) != Void.class) {
            return getDeserializer(mappingTo, mappingTo);
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable) || (type instanceof ParameterizedType)) {
            objectDeserializer3 = this.deserializers.get(cls);
        }
        if (objectDeserializer3 != null) {
            return objectDeserializer3;
        }
        ObjectDeserializer objectDeserializer4 = this.deserializers.get(type);
        if (objectDeserializer4 != null) {
            return objectDeserializer4;
        }
        if (cls.isEnum()) {
            objectDeserializer = new EnumDeserializer(cls);
        } else if (cls.isArray()) {
            objectDeserializer = ArrayCodec.instance;
        } else if (cls == Set.class || cls == HashSet.class || cls == Collection.class || cls == List.class || cls == ArrayList.class) {
            objectDeserializer = CollectionCodec.instance;
        } else if (Collection.class.isAssignableFrom(cls)) {
            objectDeserializer = CollectionCodec.instance;
        } else if (Map.class.isAssignableFrom(cls)) {
            objectDeserializer = MapDeserializer.instance;
        } else if (Throwable.class.isAssignableFrom(cls)) {
            objectDeserializer = new ThrowableDeserializer(this, cls);
        } else if (cls.getName().equals("android.net.Uri")) {
            objectDeserializer = MiscCodec.instance;
        } else {
            objectDeserializer = new JavaBeanDeserializer(this, cls, type);
        }
        putDeserializer(type, objectDeserializer);
        return objectDeserializer;
    }

    public ObjectDeserializer registerIfNotExists(Class<?> cls) {
        return registerIfNotExists(cls, cls.getModifiers(), false, true, true, true);
    }

    public ObjectDeserializer registerIfNotExists(Class<?> cls, int i, boolean z, boolean z2, boolean z3, boolean z4) {
        ObjectDeserializer objectDeserializer = this.deserializers.get(cls);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        JavaBeanDeserializer javaBeanDeserializer = new JavaBeanDeserializer(this, cls, cls, JavaBeanInfo.build(cls, i, cls, z, z2, z3, z4, this.propertyNamingStrategy));
        putDeserializer(cls, javaBeanDeserializer);
        return javaBeanDeserializer;
    }

    public boolean containsKey(Class cls) {
        return this.deserializers.get(cls) != null;
    }

    public FieldDeserializer createFieldDeserializer(ParserConfig parserConfig, Class<?> cls, FieldInfo fieldInfo) {
        Class<?> cls2 = fieldInfo.fieldClass;
        if (cls2 == List.class || cls2 == ArrayList.class || (cls2.isArray() && !cls2.getComponentType().isPrimitive())) {
            return new ListTypeFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        return new DefaultFieldDeserializer(parserConfig, cls, fieldInfo);
    }

    public void putDeserializer(Type type, ObjectDeserializer objectDeserializer) {
        this.deserializers.put(type, objectDeserializer);
    }

    public static boolean isPrimitive(Class<?> cls) {
        return cls.isPrimitive() || cls == Boolean.class || cls == Character.class || cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == String.class || cls == Date.class || cls == java.sql.Date.class || cls == Time.class || cls == Timestamp.class;
    }

    public Class<?> checkAutoType(String str, Class<?> cls, int i) {
        if (str == null) {
            return null;
        }
        if (str.length() < 128) {
            if (str.length() >= 3) {
                long charAt = (str.charAt(0) ^ (-3750763034362895579L)) * 1099511628211L;
                if (charAt == -5808493101479473382L) {
                    throw new JSONException("autoType is not support. " + str);
                }
                if ((charAt ^ str.charAt(str.length() - 1)) * 1099511628211L == 655701488918567152L) {
                    throw new JSONException("autoType is not support. " + str);
                }
                long charAt2 = (((((str.charAt(0) ^ (-3750763034362895579L)) * 1099511628211L) ^ str.charAt(1)) * 1099511628211L) ^ str.charAt(2)) * 1099511628211L;
                for (int i2 = 3; i2 < str.length(); i2++) {
                    charAt2 = (charAt2 ^ str.charAt(i2)) * 1099511628211L;
                    if (Arrays.binarySearch(denyList, charAt2) >= 0 && TypeUtils.getClassFromMapping(str) == null) {
                        throw new JSONException("autoType is not support. " + str);
                    }
                }
                Class<?> classFromMapping = TypeUtils.getClassFromMapping(str);
                if (classFromMapping != null) {
                    return classFromMapping;
                }
                Class<?> findClass = this.deserializers.findClass(str);
                if (findClass != null) {
                    return findClass;
                }
                Class<?> loadClass = TypeUtils.loadClass(str, this.defaultClassLoader, false);
                if (loadClass != null && cls != null && loadClass != HashMap.class) {
                    if (cls.isAssignableFrom(loadClass)) {
                        TypeUtils.addMapping(str, loadClass);
                        return loadClass;
                    }
                    throw new JSONException("type not match. " + str + " -> " + cls.getName());
                }
                if (loadClass.isAnnotationPresent(JSONType.class)) {
                    TypeUtils.addMapping(str, loadClass);
                    return loadClass;
                }
                int i3 = Feature.SupportAutoType.mask;
                if ((i & i3) == 0 && (i3 & JSON.DEFAULT_PARSER_FEATURE) == 0 && !this.autoTypeSupport) {
                    throw new JSONException("autoType is not support : " + str);
                }
                TypeUtils.addMapping(str, loadClass);
                return loadClass;
            }
        }
        throw new JSONException("autoType is not support. " + str);
    }
}
