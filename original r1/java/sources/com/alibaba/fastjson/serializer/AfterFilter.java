package com.alibaba.fastjson.serializer;

/* loaded from: classes2.dex */
public abstract class AfterFilter implements SerializeFilter {
    private static final ThreadLocal<JSONSerializer> serializerLocal = new ThreadLocal<>();
    private static final ThreadLocal<Character> seperatorLocal = new ThreadLocal<>();
    private static final Character COMMA = ',';

    public abstract void writeAfter(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        ThreadLocal<JSONSerializer> threadLocal = serializerLocal;
        threadLocal.set(jSONSerializer);
        ThreadLocal<Character> threadLocal2 = seperatorLocal;
        threadLocal2.set(Character.valueOf(c));
        writeAfter(obj);
        threadLocal.set(null);
        return threadLocal2.get().charValue();
    }

    protected final void writeKeyValue(String str, Object obj) {
        JSONSerializer jSONSerializer = serializerLocal.get();
        ThreadLocal<Character> threadLocal = seperatorLocal;
        char charValue = threadLocal.get().charValue();
        jSONSerializer.writeKeyValue(charValue, str, obj);
        if (charValue != ',') {
            threadLocal.set(COMMA);
        }
    }
}
