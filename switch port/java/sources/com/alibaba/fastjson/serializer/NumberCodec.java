package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* loaded from: classes2.dex */
public class NumberCodec implements ObjectSerializer, ObjectDeserializer {
    public static final NumberCodec instance = new NumberCodec();
    private DecimalFormat decimalFormat;

    private NumberCodec() {
        this.decimalFormat = null;
    }

    public NumberCodec(DecimalFormat decimalFormat) {
        this.decimalFormat = decimalFormat;
    }

    public NumberCodec(String str) {
        this(new DecimalFormat(str));
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
        String format;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            if ((serializeWriter.features & SerializerFeature.WriteNullNumberAsZero.mask) != 0) {
                serializeWriter.write(48);
                return;
            } else {
                serializeWriter.writeNull();
                return;
            }
        }
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            if (Float.isNaN(floatValue)) {
                serializeWriter.writeNull();
                return;
            }
            if (Float.isInfinite(floatValue)) {
                serializeWriter.writeNull();
                return;
            }
            String f = Float.toString(floatValue);
            if (f.endsWith(".0")) {
                f = f.substring(0, f.length() - 2);
            }
            serializeWriter.write(f);
            if ((serializeWriter.features & SerializerFeature.WriteClassName.mask) != 0) {
                serializeWriter.write(70);
                return;
            }
            return;
        }
        double doubleValue = ((Double) obj).doubleValue();
        if (Double.isNaN(doubleValue)) {
            serializeWriter.writeNull();
            return;
        }
        if (Double.isInfinite(doubleValue)) {
            serializeWriter.writeNull();
            return;
        }
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat == null) {
            format = Double.toString(doubleValue);
            if (format.endsWith(".0")) {
                format = format.substring(0, format.length() - 2);
            }
        } else {
            format = decimalFormat.format(doubleValue);
        }
        serializeWriter.append((CharSequence) format);
        if ((serializeWriter.features & SerializerFeature.WriteClassName.mask) != 0) {
            serializeWriter.write(68);
        }
    }

    /* JADX WARN: Type inference failed for: r5v15, types: [java.math.BigDecimal, T] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            if (type == Double.TYPE || type == Double.class) {
                String numberString = jSONLexer.numberString();
                jSONLexer.nextToken(16);
                return (T) Double.valueOf(Double.parseDouble(numberString));
            }
            if (type == Float.TYPE || type == Float.class) {
                String numberString2 = jSONLexer.numberString();
                jSONLexer.nextToken(16);
                return (T) Float.valueOf(Float.parseFloat(numberString2));
            }
            long longValue = jSONLexer.longValue();
            jSONLexer.nextToken(16);
            if (type == Short.TYPE || type == Short.class) {
                return (T) Short.valueOf((short) longValue);
            }
            if (type == Byte.TYPE || type == Byte.class) {
                return (T) Byte.valueOf((byte) longValue);
            }
            if (longValue >= -2147483648L && longValue <= 2147483647L) {
                return (T) Integer.valueOf((int) longValue);
            }
            return (T) Long.valueOf(longValue);
        }
        if (i == 3) {
            if (type == Double.TYPE || type == Double.class) {
                String numberString3 = jSONLexer.numberString();
                jSONLexer.nextToken(16);
                return (T) Double.valueOf(Double.parseDouble(numberString3));
            }
            if (type == Float.TYPE || type == Float.class) {
                String numberString4 = jSONLexer.numberString();
                jSONLexer.nextToken(16);
                return (T) Float.valueOf(Float.parseFloat(numberString4));
            }
            ?? r5 = (T) jSONLexer.decimalValue();
            jSONLexer.nextToken(16);
            if (type == Short.TYPE || type == Short.class) {
                return (T) Short.valueOf(r5.shortValueExact());
            }
            return (type == Byte.TYPE || type == Byte.class) ? (T) Byte.valueOf(r5.byteValueExact()) : r5;
        }
        Object parse = defaultJSONParser.parse();
        if (parse == null) {
            return null;
        }
        if (type == Double.TYPE || type == Double.class) {
            return (T) TypeUtils.castToDouble(parse);
        }
        if (type == Float.TYPE || type == Float.class) {
            return (T) TypeUtils.castToFloat(parse);
        }
        if (type == Short.TYPE || type == Short.class) {
            return (T) TypeUtils.castToShort(parse);
        }
        if (type == Byte.TYPE || type == Byte.class) {
            return (T) TypeUtils.castToByte(parse);
        }
        return (T) TypeUtils.castToBigDecimal(parse);
    }
}
