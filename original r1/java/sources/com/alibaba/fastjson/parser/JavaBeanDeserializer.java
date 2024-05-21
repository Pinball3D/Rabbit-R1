package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] smartMatchHashArray;
    private transient int[] smartMatchHashArrayMapping;
    private final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, cls, type, JavaBeanInfo.build(cls, cls.getModifiers(), type, false, true, true, true, parserConfig.propertyNamingStrategy));
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type, JavaBeanInfo javaBeanInfo) {
        this.clazz = cls;
        this.beanInfo = javaBeanInfo;
        this.sortedFieldDeserializers = new FieldDeserializer[javaBeanInfo.sortedFields.length];
        int length = javaBeanInfo.sortedFields.length;
        HashMap hashMap = null;
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            FieldDeserializer createFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, cls, fieldInfo);
            this.sortedFieldDeserializers[i] = createFieldDeserializer;
            for (String str : fieldInfo.alternateNames) {
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put(str, createFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = hashMap;
        this.fieldDeserializers = new FieldDeserializer[javaBeanInfo.fields.length];
        int length2 = javaBeanInfo.fields.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object newInstance;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject((defaultJSONParser.lexer.features & Feature.OrderedField.mask) != 0));
        }
        if (this.beanInfo.defaultConstructor == null && this.beanInfo.factoryMethod == null) {
            return null;
        }
        if (this.beanInfo.factoryMethod != null && this.beanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            Constructor<?> constructor = this.beanInfo.defaultConstructor;
            if (this.beanInfo.defaultConstructorParameterSize != 0) {
                newInstance = constructor.newInstance(defaultJSONParser.contex.object);
            } else if (constructor != null) {
                newInstance = constructor.newInstance(new Object[0]);
            } else {
                newInstance = this.beanInfo.factoryMethod.invoke(null, new Object[0]);
            }
            if (defaultJSONParser != null && (defaultJSONParser.lexer.features & Feature.InitStringFieldAsEmpty.mask) != 0) {
                for (FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == String.class) {
                        fieldInfo.set(newInstance, "");
                    }
                }
            }
            return newInstance;
        } catch (Exception e) {
            throw new JSONException("create instance error, class " + this.clazz.getName(), e);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null);
    }

    private <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        Enum r8;
        String str;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        T t = (T) createInstance(defaultJSONParser, type);
        int length = this.sortedFieldDeserializers.length;
        int i = 0;
        while (i < length) {
            char c = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
            Class<?> cls = fieldInfo.fieldClass;
            try {
                if (cls == Integer.TYPE) {
                    int scanLongValue = (int) jSONLexer.scanLongValue();
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.setInt(t, scanLongValue);
                    } else {
                        fieldDeserializer.setValue(t, new Integer(scanLongValue));
                    }
                    if (jSONLexer.ch == ',') {
                        int i2 = jSONLexer.bp + 1;
                        jSONLexer.bp = i2;
                        jSONLexer.ch = i2 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i2);
                        jSONLexer.token = 16;
                    } else if (jSONLexer.ch == ']') {
                        int i3 = jSONLexer.bp + 1;
                        jSONLexer.bp = i3;
                        jSONLexer.ch = i3 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i3);
                        jSONLexer.token = 15;
                    } else {
                        jSONLexer.nextToken();
                    }
                } else if (cls == String.class) {
                    if (jSONLexer.ch == '\"') {
                        str = jSONLexer.scanStringValue(Typography.quote);
                    } else if (jSONLexer.ch == 'n' && jSONLexer.text.startsWith("null", jSONLexer.bp)) {
                        jSONLexer.bp += 4;
                        jSONLexer.ch = jSONLexer.bp >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(jSONLexer.bp);
                        str = null;
                    } else {
                        throw new JSONException("not match string. feild : " + obj);
                    }
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.set(t, str);
                    } else {
                        fieldDeserializer.setValue(t, str);
                    }
                    if (jSONLexer.ch == ',') {
                        int i4 = jSONLexer.bp + 1;
                        jSONLexer.bp = i4;
                        jSONLexer.ch = i4 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i4);
                        jSONLexer.token = 16;
                    } else if (jSONLexer.ch == ']') {
                        int i5 = jSONLexer.bp + 1;
                        jSONLexer.bp = i5;
                        jSONLexer.ch = i5 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i5);
                        jSONLexer.token = 15;
                    } else {
                        jSONLexer.nextToken();
                    }
                } else {
                    if (cls == Long.TYPE) {
                        long scanLongValue2 = jSONLexer.scanLongValue();
                        if (fieldInfo.fieldAccess) {
                            fieldInfo.field.setLong(t, scanLongValue2);
                        } else {
                            fieldDeserializer.setValue(t, new Long(scanLongValue2));
                        }
                        if (jSONLexer.ch == ',') {
                            int i6 = jSONLexer.bp + 1;
                            jSONLexer.bp = i6;
                            jSONLexer.ch = i6 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i6);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i7 = jSONLexer.bp + 1;
                            jSONLexer.bp = i7;
                            jSONLexer.ch = i7 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i7);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else if (cls == Boolean.TYPE) {
                        boolean scanBoolean = jSONLexer.scanBoolean();
                        if (fieldInfo.fieldAccess) {
                            fieldInfo.field.setBoolean(t, scanBoolean);
                        } else {
                            fieldDeserializer.setValue(t, Boolean.valueOf(scanBoolean));
                        }
                        if (jSONLexer.ch == ',') {
                            int i8 = jSONLexer.bp + 1;
                            jSONLexer.bp = i8;
                            jSONLexer.ch = i8 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i8);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i9 = jSONLexer.bp + 1;
                            jSONLexer.bp = i9;
                            jSONLexer.ch = i9 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i9);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else if (cls.isEnum()) {
                        char c2 = jSONLexer.ch;
                        if (c2 == '\"') {
                            String scanSymbol = jSONLexer.scanSymbol(defaultJSONParser.symbolTable);
                            r8 = scanSymbol == null ? null : Enum.valueOf(cls, scanSymbol);
                        } else if (c2 >= '0' && c2 <= '9') {
                            r8 = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.config)).ordinalEnums[(int) jSONLexer.scanLongValue()];
                        } else {
                            throw new JSONException("illegal enum." + jSONLexer.info());
                        }
                        fieldDeserializer.setValue(t, r8);
                        if (jSONLexer.ch == ',') {
                            int i10 = jSONLexer.bp + 1;
                            jSONLexer.bp = i10;
                            jSONLexer.ch = i10 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i10);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i11 = jSONLexer.bp + 1;
                            jSONLexer.bp = i11;
                            jSONLexer.ch = i11 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i11);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else if (cls == Date.class && jSONLexer.ch == '1') {
                        fieldDeserializer.setValue(t, new Date(jSONLexer.scanLongValue()));
                        if (jSONLexer.ch == ',') {
                            int i12 = jSONLexer.bp + 1;
                            jSONLexer.bp = i12;
                            jSONLexer.ch = i12 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i12);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i13 = jSONLexer.bp + 1;
                            jSONLexer.bp = i13;
                            jSONLexer.ch = i13 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i13);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else {
                        if (jSONLexer.ch == '[') {
                            int i14 = jSONLexer.bp + 1;
                            jSONLexer.bp = i14;
                            jSONLexer.ch = i14 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i14);
                            jSONLexer.token = 14;
                        } else if (jSONLexer.ch == '{') {
                            int i15 = jSONLexer.bp + 1;
                            jSONLexer.bp = i15;
                            jSONLexer.ch = i15 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i15);
                            jSONLexer.token = 12;
                        } else {
                            jSONLexer.nextToken();
                        }
                        fieldDeserializer.parseField(defaultJSONParser, t, fieldInfo.fieldType, null);
                        if (c == ']') {
                            if (jSONLexer.token != 15) {
                                throw new JSONException("syntax error");
                            }
                        } else if (c == ',' && jSONLexer.token != 16) {
                            throw new JSONException("syntax error");
                        }
                    }
                    i++;
                }
                i++;
            } catch (IllegalAccessException e) {
                throw new JSONException("set " + fieldInfo.name + "error", e);
            }
        }
        if (jSONLexer.ch == ',') {
            int i16 = jSONLexer.bp + 1;
            jSONLexer.bp = i16;
            jSONLexer.ch = i16 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i16);
            jSONLexer.token = 16;
        } else {
            jSONLexer.nextToken();
        }
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:219:0x03ee, code lost:
    
        r3 = getSeeAlso(r38.config, r37.beanInfo, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03f6, code lost:
    
        if (r3 != null) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x03f8, code lost:
    
        r3 = r38.config.checkAutoType(r2, r37.clazz, r10.features);
        r0 = com.alibaba.fastjson.util.TypeUtils.getClass(r39);
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0406, code lost:
    
        if (r0 == null) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0408, code lost:
    
        if (r3 == null) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x040e, code lost:
    
        if (r0.isAssignableFrom(r3) == false) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0418, code lost:
    
        throw new com.alibaba.fastjson.JSONException("type not match");
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0419, code lost:
    
        r3 = r38.config.getDeserializer(r3);
        r0 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0428, code lost:
    
        if ((r3 instanceof com.alibaba.fastjson.parser.JavaBeanDeserializer) == false) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x042a, code lost:
    
        r3 = r3;
        r0 = (T) r3.deserialze(r38, r0, r40, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0431, code lost:
    
        if (r4 == null) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0433, code lost:
    
        r3 = r3.getFieldDeserializer(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0437, code lost:
    
        if (r3 == null) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0439, code lost:
    
        r3.setValue(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0441, code lost:
    
        if (r5 == null) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0443, code lost:
    
        r5.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0445, code lost:
    
        r38.setContext(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0448, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x043d, code lost:
    
        r0 = (T) r3.deserialze(r38, r0, r40);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0425, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x06fc, code lost:
    
        throw new com.alibaba.fastjson.JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.JSONToken.name(r10.token));
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x05d8, code lost:
    
        r1 = r19;
        r5 = r20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x045b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0463 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:527:0x00c9, B:529:0x00cf, B:62:0x00eb, B:65:0x0107, B:70:0x0118, B:77:0x0126, B:83:0x02d2, B:85:0x02dc, B:385:0x02e6, B:157:0x05e6, B:93:0x02ff, B:95:0x0307, B:97:0x0313, B:99:0x0365, B:101:0x036c, B:106:0x037c, B:107:0x0383, B:108:0x0319, B:110:0x0321, B:112:0x0327, B:113:0x032a, B:114:0x0336, B:117:0x033f, B:119:0x0343, B:121:0x0346, B:123:0x034a, B:124:0x034d, B:125:0x0359, B:126:0x0384, B:127:0x03a0, B:130:0x03a6, B:133:0x03b0, B:135:0x03b8, B:137:0x03c5, B:139:0x03d2, B:146:0x03d8, B:219:0x03ee, B:221:0x03f8, B:224:0x040a, B:227:0x0411, B:228:0x0418, B:229:0x0419, B:230:0x0426, B:232:0x042a, B:234:0x0433, B:236:0x0439, B:241:0x043d, B:245:0x0449, B:246:0x0450, B:253:0x045d, B:255:0x0463, B:257:0x046f, B:389:0x0139, B:393:0x013d, B:397:0x0150, B:400:0x0159, B:403:0x015d, B:404:0x0161, B:409:0x016b, B:414:0x0175, B:419:0x017f, B:421:0x0183, B:423:0x018d, B:425:0x0195, B:427:0x019d, B:431:0x01a1, B:434:0x01bc, B:437:0x01c6, B:440:0x01ca, B:443:0x01d2, B:446:0x01dc, B:449:0x01e0, B:452:0x01e8, B:455:0x01f2, B:458:0x01f6, B:461:0x01fe, B:464:0x0208, B:467:0x020c, B:470:0x0214, B:473:0x021e, B:476:0x0222, B:477:0x0226, B:483:0x0234, B:487:0x023d, B:491:0x0241, B:492:0x0245, B:494:0x0256, B:497:0x025a, B:498:0x025d, B:501:0x026b, B:504:0x026f, B:505:0x0272, B:509:0x028a, B:513:0x028e, B:514:0x0297, B:518:0x02ab, B:522:0x02af, B:524:0x00f9), top: B:526:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x046f A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #7 {all -> 0x00de, blocks: (B:527:0x00c9, B:529:0x00cf, B:62:0x00eb, B:65:0x0107, B:70:0x0118, B:77:0x0126, B:83:0x02d2, B:85:0x02dc, B:385:0x02e6, B:157:0x05e6, B:93:0x02ff, B:95:0x0307, B:97:0x0313, B:99:0x0365, B:101:0x036c, B:106:0x037c, B:107:0x0383, B:108:0x0319, B:110:0x0321, B:112:0x0327, B:113:0x032a, B:114:0x0336, B:117:0x033f, B:119:0x0343, B:121:0x0346, B:123:0x034a, B:124:0x034d, B:125:0x0359, B:126:0x0384, B:127:0x03a0, B:130:0x03a6, B:133:0x03b0, B:135:0x03b8, B:137:0x03c5, B:139:0x03d2, B:146:0x03d8, B:219:0x03ee, B:221:0x03f8, B:224:0x040a, B:227:0x0411, B:228:0x0418, B:229:0x0419, B:230:0x0426, B:232:0x042a, B:234:0x0433, B:236:0x0439, B:241:0x043d, B:245:0x0449, B:246:0x0450, B:253:0x045d, B:255:0x0463, B:257:0x046f, B:389:0x0139, B:393:0x013d, B:397:0x0150, B:400:0x0159, B:403:0x015d, B:404:0x0161, B:409:0x016b, B:414:0x0175, B:419:0x017f, B:421:0x0183, B:423:0x018d, B:425:0x0195, B:427:0x019d, B:431:0x01a1, B:434:0x01bc, B:437:0x01c6, B:440:0x01ca, B:443:0x01d2, B:446:0x01dc, B:449:0x01e0, B:452:0x01e8, B:455:0x01f2, B:458:0x01f6, B:461:0x01fe, B:464:0x0208, B:467:0x020c, B:470:0x0214, B:473:0x021e, B:476:0x0222, B:477:0x0226, B:483:0x0234, B:487:0x023d, B:491:0x0241, B:492:0x0245, B:494:0x0256, B:497:0x025a, B:498:0x025d, B:501:0x026b, B:504:0x026f, B:505:0x0272, B:509:0x028a, B:513:0x028e, B:514:0x0297, B:518:0x02ab, B:522:0x02af, B:524:0x00f9), top: B:526:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x05cf A[Catch: all -> 0x0705, TryCatch #1 {all -> 0x0705, blocks: (B:368:0x047e, B:287:0x05c4, B:292:0x05cf, B:304:0x05d5, B:295:0x06c2, B:297:0x06c8, B:300:0x06de, B:301:0x06fc, B:262:0x048d, B:267:0x0496, B:272:0x049f, B:277:0x04a8, B:283:0x04cb, B:284:0x0583, B:308:0x04b4, B:309:0x04bc, B:310:0x04c2, B:311:0x04c7, B:316:0x04da, B:321:0x04e4, B:326:0x04ed, B:331:0x04f6, B:336:0x04ff, B:337:0x0506, B:339:0x050a, B:341:0x050e, B:342:0x0513, B:343:0x051d, B:345:0x0521, B:347:0x0525, B:348:0x0529, B:349:0x0532, B:351:0x0536, B:353:0x053a, B:354:0x0540, B:355:0x054a, B:357:0x054e, B:359:0x0552, B:360:0x0558, B:314:0x057e, B:363:0x0563, B:364:0x057d, B:369:0x0595, B:371:0x05ae, B:375:0x05b4, B:376:0x05be, B:379:0x06fd, B:380:0x0704), top: B:367:0x047e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0595 A[Catch: all -> 0x0705, TryCatch #1 {all -> 0x0705, blocks: (B:368:0x047e, B:287:0x05c4, B:292:0x05cf, B:304:0x05d5, B:295:0x06c2, B:297:0x06c8, B:300:0x06de, B:301:0x06fc, B:262:0x048d, B:267:0x0496, B:272:0x049f, B:277:0x04a8, B:283:0x04cb, B:284:0x0583, B:308:0x04b4, B:309:0x04bc, B:310:0x04c2, B:311:0x04c7, B:316:0x04da, B:321:0x04e4, B:326:0x04ed, B:331:0x04f6, B:336:0x04ff, B:337:0x0506, B:339:0x050a, B:341:0x050e, B:342:0x0513, B:343:0x051d, B:345:0x0521, B:347:0x0525, B:348:0x0529, B:349:0x0532, B:351:0x0536, B:353:0x053a, B:354:0x0540, B:355:0x054a, B:357:0x054e, B:359:0x0552, B:360:0x0558, B:314:0x057e, B:363:0x0563, B:364:0x057d, B:369:0x0595, B:371:0x05ae, B:375:0x05b4, B:376:0x05be, B:379:0x06fd, B:380:0x0704), top: B:367:0x047e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0453 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:523:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0107 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:527:0x00c9, B:529:0x00cf, B:62:0x00eb, B:65:0x0107, B:70:0x0118, B:77:0x0126, B:83:0x02d2, B:85:0x02dc, B:385:0x02e6, B:157:0x05e6, B:93:0x02ff, B:95:0x0307, B:97:0x0313, B:99:0x0365, B:101:0x036c, B:106:0x037c, B:107:0x0383, B:108:0x0319, B:110:0x0321, B:112:0x0327, B:113:0x032a, B:114:0x0336, B:117:0x033f, B:119:0x0343, B:121:0x0346, B:123:0x034a, B:124:0x034d, B:125:0x0359, B:126:0x0384, B:127:0x03a0, B:130:0x03a6, B:133:0x03b0, B:135:0x03b8, B:137:0x03c5, B:139:0x03d2, B:146:0x03d8, B:219:0x03ee, B:221:0x03f8, B:224:0x040a, B:227:0x0411, B:228:0x0418, B:229:0x0419, B:230:0x0426, B:232:0x042a, B:234:0x0433, B:236:0x0439, B:241:0x043d, B:245:0x0449, B:246:0x0450, B:253:0x045d, B:255:0x0463, B:257:0x046f, B:389:0x0139, B:393:0x013d, B:397:0x0150, B:400:0x0159, B:403:0x015d, B:404:0x0161, B:409:0x016b, B:414:0x0175, B:419:0x017f, B:421:0x0183, B:423:0x018d, B:425:0x0195, B:427:0x019d, B:431:0x01a1, B:434:0x01bc, B:437:0x01c6, B:440:0x01ca, B:443:0x01d2, B:446:0x01dc, B:449:0x01e0, B:452:0x01e8, B:455:0x01f2, B:458:0x01f6, B:461:0x01fe, B:464:0x0208, B:467:0x020c, B:470:0x0214, B:473:0x021e, B:476:0x0222, B:477:0x0226, B:483:0x0234, B:487:0x023d, B:491:0x0241, B:492:0x0245, B:494:0x0256, B:497:0x025a, B:498:0x025d, B:501:0x026b, B:504:0x026f, B:505:0x0272, B:509:0x028a, B:513:0x028e, B:514:0x0297, B:518:0x02ab, B:522:0x02af, B:524:0x00f9), top: B:526:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02d2 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:527:0x00c9, B:529:0x00cf, B:62:0x00eb, B:65:0x0107, B:70:0x0118, B:77:0x0126, B:83:0x02d2, B:85:0x02dc, B:385:0x02e6, B:157:0x05e6, B:93:0x02ff, B:95:0x0307, B:97:0x0313, B:99:0x0365, B:101:0x036c, B:106:0x037c, B:107:0x0383, B:108:0x0319, B:110:0x0321, B:112:0x0327, B:113:0x032a, B:114:0x0336, B:117:0x033f, B:119:0x0343, B:121:0x0346, B:123:0x034a, B:124:0x034d, B:125:0x0359, B:126:0x0384, B:127:0x03a0, B:130:0x03a6, B:133:0x03b0, B:135:0x03b8, B:137:0x03c5, B:139:0x03d2, B:146:0x03d8, B:219:0x03ee, B:221:0x03f8, B:224:0x040a, B:227:0x0411, B:228:0x0418, B:229:0x0419, B:230:0x0426, B:232:0x042a, B:234:0x0433, B:236:0x0439, B:241:0x043d, B:245:0x0449, B:246:0x0450, B:253:0x045d, B:255:0x0463, B:257:0x046f, B:389:0x0139, B:393:0x013d, B:397:0x0150, B:400:0x0159, B:403:0x015d, B:404:0x0161, B:409:0x016b, B:414:0x0175, B:419:0x017f, B:421:0x0183, B:423:0x018d, B:425:0x0195, B:427:0x019d, B:431:0x01a1, B:434:0x01bc, B:437:0x01c6, B:440:0x01ca, B:443:0x01d2, B:446:0x01dc, B:449:0x01e0, B:452:0x01e8, B:455:0x01f2, B:458:0x01f6, B:461:0x01fe, B:464:0x0208, B:467:0x020c, B:470:0x0214, B:473:0x021e, B:476:0x0222, B:477:0x0226, B:483:0x0234, B:487:0x023d, B:491:0x0241, B:492:0x0245, B:494:0x0256, B:497:0x025a, B:498:0x025d, B:501:0x026b, B:504:0x026f, B:505:0x0272, B:509:0x028a, B:513:0x028e, B:514:0x0297, B:518:0x02ab, B:522:0x02af, B:524:0x00f9), top: B:526:0x00c9 }] */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.alibaba.fastjson.parser.deserializer.ObjectDeserializer] */
    /* JADX WARN: Type inference failed for: r38v0, types: [com.alibaba.fastjson.parser.DefaultJSONParser] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r38, java.lang.reflect.Type r39, java.lang.Object r40, java.lang.Object r41) {
        /*
            Method dump skipped, instructions count: 1819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    protected FieldDeserializer getFieldDeserializerByHash(long j) {
        int i = 0;
        while (true) {
            FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
            if (i >= fieldDeserializerArr.length) {
                return null;
            }
            FieldDeserializer fieldDeserializer = fieldDeserializerArr[i];
            if (fieldDeserializer.fieldInfo.nameHashCode == j) {
                return fieldDeserializer;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FieldDeserializer getFieldDeserializer(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        if (!this.beanInfo.ordered) {
            int length = this.sortedFieldDeserializers.length - 1;
            while (i <= length) {
                int i2 = (i + length) >>> 1;
                int compareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
                if (compareTo < 0) {
                    i = i2 + 1;
                } else {
                    if (compareTo <= 0) {
                        return this.sortedFieldDeserializers[i2];
                    }
                    length = i2 - 1;
                }
            }
            Map<String, FieldDeserializer> map = this.alterNameFieldDeserializers;
            if (map != null) {
                return map.get(str);
            }
            return null;
        }
        while (true) {
            FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
            if (i >= fieldDeserializerArr.length) {
                return null;
            }
            FieldDeserializer fieldDeserializer = fieldDeserializerArr[i];
            if (fieldDeserializer.fieldInfo.name.equalsIgnoreCase(str)) {
                return fieldDeserializer;
            }
            i++;
        }
    }

    private boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        boolean z;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str);
        if (fieldDeserializer == null) {
            long fnv_64_lower = TypeUtils.fnv_64_lower(str);
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i = 0;
                while (true) {
                    FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i] = TypeUtils.fnv_64_lower(fieldDeserializerArr[i].fieldInfo.name);
                    i++;
                }
                Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int binarySearch = Arrays.binarySearch(this.smartMatchHashArray, fnv_64_lower);
            if (binarySearch < 0) {
                z = str.startsWith("is");
                if (z) {
                    binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv_64_lower(str.substring(2)));
                }
            } else {
                z = false;
            }
            if (binarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    int[] iArr = new int[this.smartMatchHashArray.length];
                    Arrays.fill(iArr, -1);
                    int i2 = 0;
                    while (true) {
                        FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i2 >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int binarySearch2 = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv_64_lower(fieldDeserializerArr2[i2].fieldInfo.name));
                        if (binarySearch2 >= 0) {
                            iArr[binarySearch2] = i2;
                        }
                        i2++;
                    }
                    this.smartMatchHashArrayMapping = iArr;
                }
                int i3 = this.smartMatchHashArrayMapping[binarySearch];
                if (i3 != -1) {
                    fieldDeserializer = this.sortedFieldDeserializers[i3];
                    Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
                    if (z && cls != Boolean.TYPE && cls != Boolean.class) {
                        fieldDeserializer = null;
                    }
                }
            }
        }
        int i4 = Feature.SupportNonPublicField.mask;
        if (fieldDeserializer == null && ((defaultJSONParser.lexer.features & i4) != 0 || (i4 & this.beanInfo.parserFeatures) != 0)) {
            if (this.extraFieldDeserializers == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(1, 0.75f, 1);
                for (Class<?> cls2 = this.clazz; cls2 != null && cls2 != Object.class; cls2 = cls2.getSuperclass()) {
                    for (Field field : cls2.getDeclaredFields()) {
                        String name = field.getName();
                        if (getFieldDeserializer(name) == null) {
                            int modifiers = field.getModifiers();
                            if ((modifiers & 16) == 0 && (modifiers & 8) == 0) {
                                concurrentHashMap.put(name, field);
                            }
                        }
                    }
                }
                this.extraFieldDeserializers = concurrentHashMap;
            }
            Object obj2 = this.extraFieldDeserializers.get(str);
            if (obj2 != null) {
                if (obj2 instanceof FieldDeserializer) {
                    fieldDeserializer = (FieldDeserializer) obj2;
                } else {
                    Field field2 = (Field) obj2;
                    field2.setAccessible(true);
                    fieldDeserializer = new DefaultFieldDeserializer(defaultJSONParser.config, this.clazz, new FieldInfo(str, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0));
                    this.extraFieldDeserializers.put(str, fieldDeserializer);
                }
            }
        }
        if (fieldDeserializer == null) {
            parseExtra(defaultJSONParser, obj, str);
            return false;
        }
        jSONLexer.nextTokenWithChar(':');
        fieldDeserializer.parseField(defaultJSONParser, obj, type, map);
        return true;
    }

    void parseExtra(DefaultJSONParser defaultJSONParser, Object obj, String str) {
        Object parseObject;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if ((defaultJSONParser.lexer.features & Feature.IgnoreNotMatch.mask) == 0) {
            throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
        }
        jSONLexer.nextTokenWithChar(':');
        List<ExtraTypeProvider> list = defaultJSONParser.extraTypeProviders;
        Type type = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                type = it.next().getExtraType(obj, str);
            }
        }
        if (type == null) {
            parseObject = defaultJSONParser.parse();
        } else {
            parseObject = defaultJSONParser.parseObject(type);
        }
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, parseObject);
            return;
        }
        List<ExtraProcessor> list2 = defaultJSONParser.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, parseObject);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object createInstance(java.util.Map<java.lang.String, java.lang.Object> r10, com.alibaba.fastjson.parser.ParserConfig r11) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JavaBeanDeserializer.createInstance(java.util.Map, com.alibaba.fastjson.parser.ParserConfig):java.lang.Object");
    }

    protected JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        if (javaBeanInfo.jsonType == null) {
            return null;
        }
        for (Class<?> cls : javaBeanInfo.jsonType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }
}
