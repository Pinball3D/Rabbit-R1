package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public final class ArrayCodec implements ObjectSerializer, ObjectDeserializer {
    public static final ArrayCodec instance = new ArrayCodec();

    private ArrayCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        Object[] objArr = (Object[]) obj;
        if (obj == null) {
            if ((serializeWriter.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0) {
                serializeWriter.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                return;
            } else {
                serializeWriter.writeNull();
                return;
            }
        }
        int length = objArr.length;
        int i = length - 1;
        if (i == -1) {
            serializeWriter.append((CharSequence) HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        int i2 = 0;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.write(91);
            if ((serializeWriter.features & SerializerFeature.PrettyFormat.mask) != 0) {
                jSONSerializer.incrementIndent();
                jSONSerializer.println();
                while (i2 < length) {
                    if (i2 != 0) {
                        serializeWriter.write(44);
                        jSONSerializer.println();
                    }
                    jSONSerializer.write(objArr[i2]);
                    i2++;
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter.write(93);
                return;
            }
            Class<?> cls = null;
            ObjectSerializer objectSerializer = null;
            while (i2 < i) {
                Object obj3 = objArr[i2];
                if (obj3 == null) {
                    serializeWriter.append((CharSequence) "null,");
                } else {
                    if (jSONSerializer.references != null && jSONSerializer.references.containsKey(obj3)) {
                        jSONSerializer.writeReference(obj3);
                    } else {
                        Class<?> cls2 = obj3.getClass();
                        if (cls2 == cls) {
                            objectSerializer.write(jSONSerializer, obj3, null, null);
                        } else {
                            objectSerializer = jSONSerializer.config.get(cls2);
                            objectSerializer.write(jSONSerializer, obj3, null, null);
                            cls = cls2;
                        }
                    }
                    serializeWriter.write(44);
                }
                i2++;
            }
            Object obj4 = objArr[i];
            if (obj4 == null) {
                serializeWriter.append((CharSequence) "null]");
            } else {
                if (jSONSerializer.references != null && jSONSerializer.references.containsKey(obj4)) {
                    jSONSerializer.writeReference(obj4);
                } else {
                    jSONSerializer.writeWithFieldName(obj4, Integer.valueOf(i));
                }
                serializeWriter.write(93);
            }
        } finally {
            jSONSerializer.context = serialContext;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        if (type != char[].class) {
            if (i == 4) {
                T t = (T) jSONLexer.bytesValue();
                jSONLexer.nextToken(16);
                return t;
            }
            Class<?> componentType = ((Class) type).getComponentType();
            JSONArray jSONArray = new JSONArray();
            defaultJSONParser.parseArray(componentType, jSONArray, obj);
            return (T) toObjectArray(defaultJSONParser, componentType, jSONArray);
        }
        if (i == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            return (T) stringVal.toCharArray();
        }
        if (i == 2) {
            Number integerValue = jSONLexer.integerValue();
            jSONLexer.nextToken(16);
            return (T) integerValue.toString().toCharArray();
        }
        return (T) JSON.toJSONString(defaultJSONParser.parse()).toCharArray();
    }

    private <T> T toObjectArray(DefaultJSONParser defaultJSONParser, Class<?> cls, JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int size = jSONArray.size();
        T t = (T) Array.newInstance(cls, size);
        for (int i = 0; i < size; i++) {
            Object obj = jSONArray.get(i);
            if (obj == jSONArray) {
                Array.set(t, i, t);
            } else {
                if (cls.isArray()) {
                    if (!cls.isInstance(obj)) {
                        obj = toObjectArray(defaultJSONParser, cls, (JSONArray) obj);
                    }
                } else {
                    obj = TypeUtils.cast(obj, (Class<Object>) cls, defaultJSONParser.config);
                }
                Array.set(t, i, obj);
            }
        }
        jSONArray.setRelatedArray(t);
        jSONArray.setComponentType(cls);
        return t;
    }
}
