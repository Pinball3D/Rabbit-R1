package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public interface ObjectDeserializer {
    <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj);
}
