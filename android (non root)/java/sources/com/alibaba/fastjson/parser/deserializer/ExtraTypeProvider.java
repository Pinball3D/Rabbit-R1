package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public interface ExtraTypeProvider extends ParseProcess {
    Type getExtraType(Object obj, String str);
}
