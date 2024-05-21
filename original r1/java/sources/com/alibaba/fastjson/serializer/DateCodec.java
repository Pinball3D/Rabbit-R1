package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes2.dex */
public final class DateCodec implements ObjectSerializer, ObjectDeserializer {
    public static final DateCodec instance = new DateCodec();

    private DateCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) throws IOException {
        Date date;
        char[] charArray;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if ((serializeWriter.features & SerializerFeature.WriteClassName.mask) != 0 && obj.getClass() != type) {
            if (obj.getClass() == Date.class) {
                serializeWriter.write("new Date(");
                serializeWriter.writeLong(((Date) obj).getTime());
                serializeWriter.write(41);
                return;
            }
            serializeWriter.write(123);
            serializeWriter.writeFieldName(JSON.DEFAULT_TYPE_KEY, false);
            jSONSerializer.write(obj.getClass().getName());
            serializeWriter.write(44);
            serializeWriter.writeFieldName("val", false);
            serializeWriter.writeLong(((Date) obj).getTime());
            serializeWriter.write(125);
            return;
        }
        if (obj instanceof Calendar) {
            date = ((Calendar) obj).getTime();
        } else {
            date = (Date) obj;
        }
        if ((serializeWriter.features & SerializerFeature.WriteDateUseDateFormat.mask) != 0) {
            DateFormat dateFormat = jSONSerializer.getDateFormat();
            if (dateFormat == null) {
                dateFormat = new SimpleDateFormat(JSON.DEFFAULT_DATE_FORMAT, jSONSerializer.locale);
                dateFormat.setTimeZone(jSONSerializer.timeZone);
            }
            serializeWriter.writeString(dateFormat.format(date));
            return;
        }
        long time = date.getTime();
        if ((serializeWriter.features & SerializerFeature.UseISO8601DateFormat.mask) != 0) {
            if ((serializeWriter.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
                serializeWriter.write(39);
            } else {
                serializeWriter.write(34);
            }
            Calendar calendar = Calendar.getInstance(jSONSerializer.timeZone, jSONSerializer.locale);
            calendar.setTimeInMillis(time);
            int i = calendar.get(1);
            int i2 = calendar.get(2) + 1;
            int i3 = calendar.get(5);
            int i4 = calendar.get(11);
            int i5 = calendar.get(12);
            int i6 = calendar.get(13);
            int i7 = calendar.get(14);
            if (i7 != 0) {
                charArray = "0000-00-00T00:00:00.000".toCharArray();
                SerializeWriter.getChars(i7, 23, charArray);
                SerializeWriter.getChars(i6, 19, charArray);
                SerializeWriter.getChars(i5, 16, charArray);
                SerializeWriter.getChars(i4, 13, charArray);
                SerializeWriter.getChars(i3, 10, charArray);
                SerializeWriter.getChars(i2, 7, charArray);
                SerializeWriter.getChars(i, 4, charArray);
            } else if (i6 == 0 && i5 == 0 && i4 == 0) {
                charArray = "0000-00-00".toCharArray();
                SerializeWriter.getChars(i3, 10, charArray);
                SerializeWriter.getChars(i2, 7, charArray);
                SerializeWriter.getChars(i, 4, charArray);
            } else {
                charArray = "0000-00-00T00:00:00".toCharArray();
                SerializeWriter.getChars(i6, 19, charArray);
                SerializeWriter.getChars(i5, 16, charArray);
                SerializeWriter.getChars(i4, 13, charArray);
                SerializeWriter.getChars(i3, 10, charArray);
                SerializeWriter.getChars(i2, 7, charArray);
                SerializeWriter.getChars(i, 4, charArray);
            }
            serializeWriter.write(charArray);
            if ((serializeWriter.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
                serializeWriter.write(39);
                return;
            } else {
                serializeWriter.write(34);
                return;
            }
        }
        serializeWriter.writeLong(time);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.util.Calendar, T] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.util.Calendar, T] */
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, String str) {
        Object obj2;
        T t;
        Object obj3;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Long valueOf = Long.valueOf(jSONLexer.longValue());
            jSONLexer.nextToken(16);
            obj3 = valueOf;
        } else if (i == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            obj3 = stringVal;
            if ((jSONLexer.features & Feature.AllowISO8601DateFormat.mask) != 0) {
                JSONLexer jSONLexer2 = new JSONLexer(stringVal);
                Object obj4 = stringVal;
                if (jSONLexer2.scanISO8601DateIfMatch(true)) {
                    ?? r1 = (T) jSONLexer2.calendar;
                    if (type == Calendar.class) {
                        jSONLexer2.close();
                        return r1;
                    }
                    obj4 = r1.getTime();
                }
                jSONLexer2.close();
                obj3 = obj4;
            }
        } else {
            if (i == 8) {
                jSONLexer.nextToken();
                obj2 = null;
                t = (T) cast(defaultJSONParser, type, obj, obj2, str);
                if (type != Calendar.class && !(t instanceof Calendar)) {
                    Date date = (Date) t;
                    if (date == null) {
                        return null;
                    }
                    ?? r11 = (T) Calendar.getInstance(jSONLexer.timeZone, jSONLexer.locale);
                    r11.setTime(date);
                    return r11;
                }
            }
            if (i == 12) {
                jSONLexer.nextToken();
                if (jSONLexer.token() == 4) {
                    if (JSON.DEFAULT_TYPE_KEY.equals(jSONLexer.stringVal())) {
                        jSONLexer.nextToken();
                        defaultJSONParser.accept(17);
                        Class<?> checkAutoType = defaultJSONParser.config.checkAutoType(jSONLexer.stringVal(), null, jSONLexer.features);
                        if (checkAutoType != null) {
                            type = checkAutoType;
                        }
                        defaultJSONParser.accept(4);
                        defaultJSONParser.accept(16);
                    }
                    jSONLexer.nextTokenWithChar(':');
                    int i2 = jSONLexer.token();
                    if (i2 == 2) {
                        long longValue = jSONLexer.longValue();
                        jSONLexer.nextToken();
                        Long valueOf2 = Long.valueOf(longValue);
                        defaultJSONParser.accept(13);
                        obj3 = valueOf2;
                    } else {
                        throw new JSONException("syntax error : " + JSONToken.name(i2));
                    }
                } else {
                    throw new JSONException("syntax error");
                }
            } else if (defaultJSONParser.resolveStatus == 2) {
                defaultJSONParser.resolveStatus = 0;
                defaultJSONParser.accept(16);
                if (jSONLexer.token() == 4) {
                    if (!"val".equals(jSONLexer.stringVal())) {
                        throw new JSONException("syntax error");
                    }
                    jSONLexer.nextToken();
                    defaultJSONParser.accept(17);
                    Object parse = defaultJSONParser.parse();
                    defaultJSONParser.accept(13);
                    obj3 = parse;
                } else {
                    throw new JSONException("syntax error");
                }
            } else {
                obj3 = defaultJSONParser.parse();
            }
        }
        obj2 = obj3;
        t = (T) cast(defaultJSONParser, type, obj, obj2, str);
        return type != Calendar.class ? t : t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.Calendar, T] */
    protected <T> T cast(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, String str) {
        DateFormat dateFormat;
        if (obj2 == 0) {
            return null;
        }
        if (obj2 instanceof Date) {
            return obj2;
        }
        if (obj2 instanceof BigDecimal) {
            return (T) new Date(((BigDecimal) obj2).longValueExact());
        }
        if (obj2 instanceof Number) {
            return (T) new Date(((Number) obj2).longValue());
        }
        if (obj2 instanceof String) {
            String str2 = (String) obj2;
            if (str2.length() == 0) {
                return null;
            }
            JSONLexer jSONLexer = new JSONLexer(str2);
            try {
                if (jSONLexer.scanISO8601DateIfMatch(false)) {
                    ?? r1 = (T) jSONLexer.calendar;
                    return type == Calendar.class ? r1 : (T) r1.getTime();
                }
                jSONLexer.close();
                if ("0000-00-00".equals(str2) || "0000-00-00T00:00:00".equalsIgnoreCase(str2) || "0001-01-01T00:00:00+08:00".equalsIgnoreCase(str2)) {
                    return null;
                }
                if (str != null) {
                    dateFormat = new SimpleDateFormat(str);
                } else {
                    dateFormat = defaultJSONParser.getDateFormat();
                }
                try {
                    return (T) dateFormat.parse(str2);
                } catch (ParseException unused) {
                    return (T) new Date(Long.parseLong(str2));
                }
            } finally {
                jSONLexer.close();
            }
        }
        throw new JSONException("parse error");
    }
}
