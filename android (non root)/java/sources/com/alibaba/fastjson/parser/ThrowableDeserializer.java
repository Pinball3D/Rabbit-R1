package com.alibaba.fastjson.parser;

/* loaded from: classes2.dex */
public class ThrowableDeserializer extends JavaBeanDeserializer {
    public ThrowableDeserializer(ParserConfig parserConfig, Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r2) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d7, code lost:
    
        if (r2 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
    
        r3 = (T) new java.lang.Exception(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x015f, code lost:
    
        if (r12 == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0161, code lost:
    
        ((java.lang.Throwable) r3).setStackTrace(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0164, code lost:
    
        if (r4 == null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0166, code lost:
    
        if (r2 == null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0168, code lost:
    
        r5 = r0.clazz;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x016a, code lost:
    
        if (r2 != r5) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x016d, code lost:
    
        r0 = r18.config.getDeserializer(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0175, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.JavaBeanDeserializer) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0177, code lost:
    
        r0 = (com.alibaba.fastjson.parser.JavaBeanDeserializer) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x017b, code lost:
    
        if (r0 == null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x017d, code lost:
    
        r1 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0189, code lost:
    
        if (r1.hasNext() == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x018b, code lost:
    
        r2 = (java.util.Map.Entry) r1.next();
        r4 = (java.lang.String) r2.getKey();
        r2 = r2.getValue();
        r4 = r0.getFieldDeserializer(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x019f, code lost:
    
        if (r4 == null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01a1, code lost:
    
        r4.setValue(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x017a, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a5, code lost:
    
        return (T) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e0, code lost:
    
        r3 = r2.getConstructors();
        r6 = r3.length;
        r8 = r5;
        r13 = r8;
        r14 = r13;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e9, code lost:
    
        if (r7 >= r6) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00eb, code lost:
    
        r15 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f2, code lost:
    
        if (r15.getParameterTypes().length != 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f4, code lost:
    
        r14 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012c, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fc, code lost:
    
        if (r15.getParameterTypes().length != 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0108, code lost:
    
        if (r15.getParameterTypes()[0] != java.lang.String.class) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x010a, code lost:
    
        r13 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0112, code lost:
    
        if (r15.getParameterTypes().length != 2) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x011e, code lost:
    
        if (r15.getParameterTypes()[0] != java.lang.String.class) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0129, code lost:
    
        if (r15.getParameterTypes()[1] != java.lang.Throwable.class) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x012b, code lost:
    
        r8 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0131, code lost:
    
        if (r8 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0133, code lost:
    
        r3 = (T) ((java.lang.Throwable) r8.newInstance(r11, r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0158, code lost:
    
        if (r3 != null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015a, code lost:
    
        r3 = (T) new java.lang.Exception(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x013e, code lost:
    
        if (r13 == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0140, code lost:
    
        r3 = (java.lang.Throwable) r13.newInstance(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014b, code lost:
    
        if (r14 == null) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x014d, code lost:
    
        r3 = (java.lang.Throwable) r14.newInstance(new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0157, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a6, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ae, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.alibaba.fastjson.parser.JavaBeanDeserializer] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.reflect.Constructor] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // com.alibaba.fastjson.parser.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r18, java.lang.reflect.Type r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.ThrowableDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }
}
