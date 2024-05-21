package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class JavaBeanSerializer implements ObjectSerializer {
    protected int features;
    private final FieldSerializer[] getters;
    private final FieldSerializer[] sortedGetters;
    protected final String typeKey;
    protected final String typeName;
    private static final char[] true_chars = {'t', 'r', 'u', 'e'};
    private static final char[] false_chars = {'f', 'a', 'l', 's', 'e'};

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (PropertyNamingStrategy) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JavaBeanSerializer(Class<?> cls, PropertyNamingStrategy propertyNamingStrategy) {
        this(cls, cls.getModifiers(), null, false, true, true, true, propertyNamingStrategy);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, cls.getModifiers(), map(strArr), false, true, true, true, null);
    }

    private static Map<String, String> map(String... strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            hashMap.put(str, str);
        }
        return hashMap;
    }

    public JavaBeanSerializer(Class<?> cls, int i, Map<String, String> map, boolean z, boolean z2, boolean z3, boolean z4, PropertyNamingStrategy propertyNamingStrategy) {
        PropertyNamingStrategy propertyNamingStrategy2;
        String str;
        String str2;
        PropertyNamingStrategy naming;
        this.features = 0;
        JSONType jSONType = z2 ? (JSONType) cls.getAnnotation(JSONType.class) : null;
        if (jSONType != null) {
            this.features = SerializerFeature.of(jSONType.serialzeFeatures());
            str = jSONType.typeName();
            if (str.length() == 0) {
                str = null;
                str2 = null;
            } else {
                str2 = null;
                for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
                    JSONType jSONType2 = (JSONType) superclass.getAnnotation(JSONType.class);
                    if (jSONType2 == null) {
                        break;
                    }
                    str2 = jSONType2.typeKey();
                    if (str2.length() != 0) {
                        break;
                    }
                }
                for (Class<?> cls2 : cls.getInterfaces()) {
                    JSONType jSONType3 = (JSONType) cls2.getAnnotation(JSONType.class);
                    if (jSONType3 != null) {
                        str2 = jSONType3.typeKey();
                        if (str2.length() != 0) {
                            break;
                        }
                    }
                }
                if (str2 != null && str2.length() == 0) {
                    str2 = null;
                }
            }
            propertyNamingStrategy2 = (propertyNamingStrategy != null || (naming = jSONType.naming()) == PropertyNamingStrategy.CamelCase) ? propertyNamingStrategy : naming;
        } else {
            propertyNamingStrategy2 = propertyNamingStrategy;
            str = null;
            str2 = null;
        }
        this.typeName = str;
        this.typeKey = str2;
        List<FieldInfo> computeGetters = TypeUtils.computeGetters(cls, i, z, jSONType, map, false, z3, z4, propertyNamingStrategy2);
        ArrayList arrayList = new ArrayList();
        Iterator<FieldInfo> it = computeGetters.iterator();
        while (it.hasNext()) {
            arrayList.add(new FieldSerializer(it.next()));
        }
        FieldSerializer[] fieldSerializerArr = (FieldSerializer[]) arrayList.toArray(new FieldSerializer[arrayList.size()]);
        this.getters = fieldSerializerArr;
        String[] orders = jSONType != null ? jSONType.orders() : null;
        if (orders != null && orders.length != 0) {
            List<FieldInfo> computeGetters2 = TypeUtils.computeGetters(cls, i, z, jSONType, map, true, z3, z4, propertyNamingStrategy2);
            ArrayList arrayList2 = new ArrayList();
            Iterator<FieldInfo> it2 = computeGetters2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new FieldSerializer(it2.next()));
            }
            this.sortedGetters = (FieldSerializer[]) arrayList2.toArray(new FieldSerializer[arrayList2.size()]);
            return;
        }
        FieldSerializer[] fieldSerializerArr2 = new FieldSerializer[fieldSerializerArr.length];
        System.arraycopy(fieldSerializerArr, 0, fieldSerializerArr2, 0, fieldSerializerArr.length);
        Arrays.sort(fieldSerializerArr2);
        if (Arrays.equals(fieldSerializerArr2, fieldSerializerArr)) {
            this.sortedGetters = fieldSerializerArr;
        } else {
            this.sortedGetters = fieldSerializerArr2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x040a A[Catch: all -> 0x05a1, Exception -> 0x05a7, TryCatch #8 {Exception -> 0x05a7, all -> 0x05a1, blocks: (B:77:0x0172, B:79:0x018d, B:81:0x0191, B:89:0x0196, B:91:0x019a, B:95:0x01a3, B:96:0x01a7, B:98:0x01ad, B:103:0x01c3, B:105:0x01c9, B:107:0x01ce, B:110:0x021a, B:112:0x0220, B:114:0x023b, B:115:0x023f, B:117:0x0245, B:127:0x0267, B:129:0x026b, B:131:0x0273, B:133:0x0277, B:134:0x027c, B:136:0x0280, B:137:0x0285, B:138:0x028c, B:140:0x0292, B:145:0x02ac, B:147:0x02b0, B:149:0x02b7, B:151:0x02bb, B:152:0x02c0, B:154:0x02c4, B:155:0x02c9, B:156:0x02d0, B:158:0x02d6, B:166:0x02f5, B:168:0x0303, B:170:0x030e, B:172:0x0312, B:175:0x031d, B:177:0x0321, B:183:0x03cc, B:185:0x03d0, B:187:0x03d4, B:189:0x03d8, B:191:0x03dc, B:193:0x03e0, B:195:0x03f2, B:197:0x03f6, B:199:0x03fa, B:201:0x03e4, B:203:0x03e8, B:207:0x040a, B:209:0x0413, B:211:0x0417, B:212:0x041b, B:213:0x041f, B:215:0x0432, B:218:0x043c, B:219:0x0440, B:225:0x044a, B:226:0x044d, B:229:0x0455, B:231:0x0460, B:233:0x0464, B:235:0x0469, B:239:0x0489, B:242:0x0493, B:245:0x049a, B:249:0x04a4, B:253:0x04b0, B:257:0x04b6, B:259:0x04ba, B:260:0x04bc, B:262:0x04c4, B:264:0x04c8, B:265:0x04cc, B:266:0x04d8, B:255:0x04e2, B:268:0x04e5, B:270:0x04e9, B:271:0x04f2, B:274:0x04f8, B:275:0x0503, B:279:0x0514, B:281:0x051b, B:283:0x0524, B:286:0x052c, B:287:0x0531, B:288:0x0536, B:290:0x053a, B:291:0x053f, B:292:0x0546, B:295:0x054e, B:297:0x0557, B:299:0x0566, B:300:0x056b, B:301:0x0570, B:302:0x057b, B:303:0x0580, B:304:0x0585, B:306:0x0326, B:310:0x0333, B:312:0x033e, B:314:0x0342, B:317:0x0349, B:319:0x034d, B:322:0x0355, B:324:0x035d, B:326:0x0368, B:328:0x036c, B:331:0x0373, B:333:0x0377, B:335:0x037c, B:336:0x0382, B:338:0x038a, B:340:0x0395, B:342:0x0399, B:345:0x03a0, B:347:0x03a4, B:349:0x03a9, B:351:0x03b1, B:353:0x03b5, B:361:0x0227, B:363:0x022b, B:364:0x0230, B:366:0x0234, B:369:0x01de, B:371:0x01e2, B:373:0x01ee, B:375:0x01f2, B:376:0x0202, B:378:0x0209, B:400:0x05bc, B:401:0x05c2, B:403:0x05c8, B:409:0x05da, B:411:0x05e3, B:414:0x05f2, B:416:0x05f6, B:417:0x05fa), top: B:76:0x0172 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0622 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x05f2 A[Catch: all -> 0x05a1, Exception -> 0x05a7, TRY_ENTER, TryCatch #8 {Exception -> 0x05a7, all -> 0x05a1, blocks: (B:77:0x0172, B:79:0x018d, B:81:0x0191, B:89:0x0196, B:91:0x019a, B:95:0x01a3, B:96:0x01a7, B:98:0x01ad, B:103:0x01c3, B:105:0x01c9, B:107:0x01ce, B:110:0x021a, B:112:0x0220, B:114:0x023b, B:115:0x023f, B:117:0x0245, B:127:0x0267, B:129:0x026b, B:131:0x0273, B:133:0x0277, B:134:0x027c, B:136:0x0280, B:137:0x0285, B:138:0x028c, B:140:0x0292, B:145:0x02ac, B:147:0x02b0, B:149:0x02b7, B:151:0x02bb, B:152:0x02c0, B:154:0x02c4, B:155:0x02c9, B:156:0x02d0, B:158:0x02d6, B:166:0x02f5, B:168:0x0303, B:170:0x030e, B:172:0x0312, B:175:0x031d, B:177:0x0321, B:183:0x03cc, B:185:0x03d0, B:187:0x03d4, B:189:0x03d8, B:191:0x03dc, B:193:0x03e0, B:195:0x03f2, B:197:0x03f6, B:199:0x03fa, B:201:0x03e4, B:203:0x03e8, B:207:0x040a, B:209:0x0413, B:211:0x0417, B:212:0x041b, B:213:0x041f, B:215:0x0432, B:218:0x043c, B:219:0x0440, B:225:0x044a, B:226:0x044d, B:229:0x0455, B:231:0x0460, B:233:0x0464, B:235:0x0469, B:239:0x0489, B:242:0x0493, B:245:0x049a, B:249:0x04a4, B:253:0x04b0, B:257:0x04b6, B:259:0x04ba, B:260:0x04bc, B:262:0x04c4, B:264:0x04c8, B:265:0x04cc, B:266:0x04d8, B:255:0x04e2, B:268:0x04e5, B:270:0x04e9, B:271:0x04f2, B:274:0x04f8, B:275:0x0503, B:279:0x0514, B:281:0x051b, B:283:0x0524, B:286:0x052c, B:287:0x0531, B:288:0x0536, B:290:0x053a, B:291:0x053f, B:292:0x0546, B:295:0x054e, B:297:0x0557, B:299:0x0566, B:300:0x056b, B:301:0x0570, B:302:0x057b, B:303:0x0580, B:304:0x0585, B:306:0x0326, B:310:0x0333, B:312:0x033e, B:314:0x0342, B:317:0x0349, B:319:0x034d, B:322:0x0355, B:324:0x035d, B:326:0x0368, B:328:0x036c, B:331:0x0373, B:333:0x0377, B:335:0x037c, B:336:0x0382, B:338:0x038a, B:340:0x0395, B:342:0x0399, B:345:0x03a0, B:347:0x03a4, B:349:0x03a9, B:351:0x03b1, B:353:0x03b5, B:361:0x0227, B:363:0x022b, B:364:0x0230, B:366:0x0234, B:369:0x01de, B:371:0x01e2, B:373:0x01ee, B:375:0x01f2, B:376:0x0202, B:378:0x0209, B:400:0x05bc, B:401:0x05c2, B:403:0x05c8, B:409:0x05da, B:411:0x05e3, B:414:0x05f2, B:416:0x05f6, B:417:0x05fa), top: B:76:0x0172 }] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0172 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r36, java.lang.Object r37, java.lang.Object r38, java.lang.reflect.Type r39) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type):void");
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
        }
        return linkedHashMap;
    }
}
