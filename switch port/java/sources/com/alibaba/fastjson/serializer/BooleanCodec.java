package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class BooleanCodec implements ObjectSerializer, ObjectDeserializer {
    public static final BooleanCodec instance = new BooleanCodec();

    private BooleanCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            if ((serializeWriter.features & SerializerFeature.WriteNullBooleanAsFalse.mask) != 0) {
                serializeWriter.write("false");
                return;
            } else {
                serializeWriter.writeNull();
                return;
            }
        }
        if (bool.booleanValue()) {
            serializeWriter.write("true");
        } else {
            serializeWriter.write("false");
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 6) {
            jSONLexer.nextToken(16);
            return (T) Boolean.TRUE;
        }
        if (i == 7) {
            jSONLexer.nextToken(16);
            return (T) Boolean.FALSE;
        }
        if (i == 2) {
            int intValue = jSONLexer.intValue();
            jSONLexer.nextToken(16);
            if (intValue == 1) {
                return (T) Boolean.TRUE;
            }
            return (T) Boolean.FALSE;
        }
        Object parse = defaultJSONParser.parse();
        if (parse == null) {
            return null;
        }
        return (T) TypeUtils.castToBoolean(parse);
    }
}
