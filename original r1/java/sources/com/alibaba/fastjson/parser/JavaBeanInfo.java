package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class JavaBeanInfo {
    final Constructor<?> creatorConstructor;
    public final String[] creatorConstructorParameters;
    final Constructor<?> defaultConstructor;
    final int defaultConstructorParameterSize;
    final Method factoryMethod;
    final FieldInfo[] fields;
    final JSONType jsonType;
    boolean ordered = false;
    public final int parserFeatures;
    final FieldInfo[] sortedFields;
    final boolean supportBeanToArray;
    public final String typeKey;
    public final long typeKeyHashCode;
    public final String typeName;

    JavaBeanInfo(Class<?> cls, Constructor<?> constructor, Constructor<?> constructor2, Method method, FieldInfo[] fieldInfoArr, FieldInfo[] fieldInfoArr2, JSONType jSONType, String[] strArr) {
        int i;
        boolean z;
        int i2 = 0;
        this.defaultConstructor = constructor;
        this.creatorConstructor = constructor2;
        this.factoryMethod = method;
        this.fields = fieldInfoArr;
        this.jsonType = jSONType;
        if (strArr == null || strArr.length != fieldInfoArr.length) {
            this.creatorConstructorParameters = strArr;
        } else {
            this.creatorConstructorParameters = null;
        }
        if (jSONType != null) {
            String typeName = jSONType.typeName();
            this.typeName = typeName.length() <= 0 ? cls.getName() : typeName;
            String typeKey = jSONType.typeKey();
            this.typeKey = typeKey.length() > 0 ? typeKey : null;
            i = 0;
            for (Feature feature : jSONType.parseFeatures()) {
                i |= feature.mask;
            }
        } else {
            this.typeName = cls.getName();
            this.typeKey = null;
            i = 0;
        }
        String str = this.typeKey;
        if (str == null) {
            this.typeKeyHashCode = 0L;
        } else {
            this.typeKeyHashCode = TypeUtils.fnv_64_lower(str);
        }
        this.parserFeatures = i;
        if (jSONType != null) {
            Feature[] parseFeatures = jSONType.parseFeatures();
            z = false;
            for (Feature feature2 : parseFeatures) {
                if (feature2 == Feature.SupportArrayToBean) {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        this.supportBeanToArray = z;
        FieldInfo[] computeSortedFields = computeSortedFields(fieldInfoArr, fieldInfoArr2);
        this.sortedFields = Arrays.equals(fieldInfoArr, computeSortedFields) ? fieldInfoArr : computeSortedFields;
        if (constructor != null) {
            i2 = constructor.getParameterTypes().length;
        } else if (method != null) {
            i2 = method.getParameterTypes().length;
        }
        this.defaultConstructorParameterSize = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0023, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.alibaba.fastjson.util.FieldInfo[] computeSortedFields(com.alibaba.fastjson.util.FieldInfo[] r9, com.alibaba.fastjson.util.FieldInfo[] r10) {
        /*
            Method dump skipped, instructions count: 174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JavaBeanInfo.computeSortedFields(com.alibaba.fastjson.util.FieldInfo[], com.alibaba.fastjson.util.FieldInfo[]):com.alibaba.fastjson.util.FieldInfo[]");
    }

    static boolean addField(List<FieldInfo> list, FieldInfo fieldInfo, boolean z) {
        if (!z) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                FieldInfo fieldInfo2 = list.get(i);
                if (fieldInfo2.name.equals(fieldInfo.name) && (!fieldInfo2.getOnly || fieldInfo.getOnly)) {
                    return false;
                }
            }
        }
        list.add(fieldInfo);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:210:0x0782, code lost:
    
        if (r1.length() > 0) goto L355;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x065a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0666  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x06a2  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0724  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0801  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05d0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0562  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.lang.reflect.Type[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.fastjson.parser.JavaBeanInfo build(java.lang.Class<?> r37, int r38, java.lang.reflect.Type r39, boolean r40, boolean r41, boolean r42, boolean r43, com.alibaba.fastjson.PropertyNamingStrategy r44) {
        /*
            Method dump skipped, instructions count: 2078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JavaBeanInfo.build(java.lang.Class, int, java.lang.reflect.Type, boolean, boolean, boolean, boolean, com.alibaba.fastjson.PropertyNamingStrategy):com.alibaba.fastjson.parser.JavaBeanInfo");
    }
}
