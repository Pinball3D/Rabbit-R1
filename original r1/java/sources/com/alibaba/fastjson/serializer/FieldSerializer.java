package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.util.FieldInfo;
import java.io.IOException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collection;
import kotlin.text.Typography;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public final class FieldSerializer implements Comparable<FieldSerializer> {
    protected final int features;
    public final FieldInfo fieldInfo;
    protected final String format;
    protected char[] name_chars;
    private RuntimeSerializerInfo runtimeInfo;
    protected final boolean writeNull;

    public FieldSerializer(FieldInfo fieldInfo) {
        boolean z;
        this.fieldInfo = fieldInfo;
        JSONField annotation = fieldInfo.getAnnotation();
        if (annotation != null) {
            z = false;
            for (SerializerFeature serializerFeature : annotation.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteMapNullValue) {
                    z = true;
                }
            }
            String trim = annotation.format().trim();
            r3 = trim.length() != 0 ? trim : null;
            this.features = SerializerFeature.of(annotation.serialzeFeatures());
        } else {
            this.features = 0;
            z = false;
        }
        this.writeNull = z;
        this.format = r3;
        String str = fieldInfo.name;
        int length = str.length();
        this.name_chars = new char[length + 3];
        str.getChars(0, str.length(), this.name_chars, 1);
        char[] cArr = this.name_chars;
        cArr[0] = Typography.quote;
        cArr[length + 1] = Typography.quote;
        cArr[length + 2] = ':';
    }

    public void writePrefix(JSONSerializer jSONSerializer) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        int i = serializeWriter.features;
        if ((SerializerFeature.QuoteFieldNames.mask & i) != 0) {
            if ((i & SerializerFeature.UseSingleQuotes.mask) != 0) {
                serializeWriter.writeFieldName(this.fieldInfo.name, true);
                return;
            } else {
                char[] cArr = this.name_chars;
                serializeWriter.write(cArr, 0, cArr.length);
                return;
            }
        }
        serializeWriter.writeFieldName(this.fieldInfo.name, true);
    }

    public Object getPropertyValue(Object obj) throws Exception {
        try {
            return this.fieldInfo.get(obj);
        } catch (Exception e) {
            Method method = this.fieldInfo.method;
            FieldInfo fieldInfo = this.fieldInfo;
            Member member = method != null ? fieldInfo.method : fieldInfo.field;
            throw new JSONException("get property error。 " + (member.getDeclaringClass().getName() + "." + member.getName()), e);
        }
    }

    public void writeValue(JSONSerializer jSONSerializer, Object obj) throws Exception {
        Class<?> cls;
        String str = this.format;
        if (str != null) {
            jSONSerializer.writeWithFormat(obj, str);
            return;
        }
        if (this.runtimeInfo == null) {
            if (obj == null) {
                cls = this.fieldInfo.fieldClass;
            } else {
                cls = obj.getClass();
            }
            this.runtimeInfo = new RuntimeSerializerInfo(jSONSerializer.config.get(cls), cls);
        }
        RuntimeSerializerInfo runtimeSerializerInfo = this.runtimeInfo;
        if (obj == null) {
            if ((this.features & SerializerFeature.WriteNullNumberAsZero.mask) != 0 && Number.class.isAssignableFrom(runtimeSerializerInfo.runtimeFieldClass)) {
                jSONSerializer.out.write(48);
                return;
            }
            if ((this.features & SerializerFeature.WriteNullBooleanAsFalse.mask) != 0 && Boolean.class == runtimeSerializerInfo.runtimeFieldClass) {
                jSONSerializer.out.write("false");
                return;
            } else if ((this.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0 && Collection.class.isAssignableFrom(runtimeSerializerInfo.runtimeFieldClass)) {
                jSONSerializer.out.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                return;
            } else {
                runtimeSerializerInfo.fieldSerializer.write(jSONSerializer, null, this.fieldInfo.name, runtimeSerializerInfo.runtimeFieldClass);
                return;
            }
        }
        Class<?> cls2 = obj.getClass();
        if (cls2 == runtimeSerializerInfo.runtimeFieldClass) {
            runtimeSerializerInfo.fieldSerializer.write(jSONSerializer, obj, this.fieldInfo.name, this.fieldInfo.fieldType);
        } else {
            jSONSerializer.config.get(cls2).write(jSONSerializer, obj, this.fieldInfo.name, this.fieldInfo.fieldType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class RuntimeSerializerInfo {
        ObjectSerializer fieldSerializer;
        Class<?> runtimeFieldClass;

        public RuntimeSerializerInfo(ObjectSerializer objectSerializer, Class<?> cls) {
            this.fieldSerializer = objectSerializer;
            this.runtimeFieldClass = cls;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldSerializer fieldSerializer) {
        return this.fieldInfo.compareTo(fieldSerializer.fieldInfo);
    }
}
