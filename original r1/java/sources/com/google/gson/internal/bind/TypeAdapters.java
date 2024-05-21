package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes3.dex */
public final class TypeAdapters {
    public static final TypeAdapter<AtomicBoolean> ATOMIC_BOOLEAN;
    public static final TypeAdapterFactory ATOMIC_BOOLEAN_FACTORY;
    public static final TypeAdapter<AtomicInteger> ATOMIC_INTEGER;
    public static final TypeAdapter<AtomicIntegerArray> ATOMIC_INTEGER_ARRAY;
    public static final TypeAdapterFactory ATOMIC_INTEGER_ARRAY_FACTORY;
    public static final TypeAdapterFactory ATOMIC_INTEGER_FACTORY;
    public static final TypeAdapter<BigDecimal> BIG_DECIMAL;
    public static final TypeAdapter<BigInteger> BIG_INTEGER;
    public static final TypeAdapter<BitSet> BIT_SET;
    public static final TypeAdapterFactory BIT_SET_FACTORY;
    public static final TypeAdapter<Boolean> BOOLEAN;
    public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING;
    public static final TypeAdapterFactory BOOLEAN_FACTORY;
    public static final TypeAdapter<Number> BYTE;
    public static final TypeAdapterFactory BYTE_FACTORY;
    public static final TypeAdapter<Calendar> CALENDAR;
    public static final TypeAdapterFactory CALENDAR_FACTORY;
    public static final TypeAdapter<Character> CHARACTER;
    public static final TypeAdapterFactory CHARACTER_FACTORY;
    public static final TypeAdapter<Class> CLASS;
    public static final TypeAdapterFactory CLASS_FACTORY;
    public static final TypeAdapter<Currency> CURRENCY;
    public static final TypeAdapterFactory CURRENCY_FACTORY;
    public static final TypeAdapter<Number> DOUBLE;
    public static final TypeAdapterFactory ENUM_FACTORY;
    public static final TypeAdapter<Number> FLOAT;
    public static final TypeAdapter<InetAddress> INET_ADDRESS;
    public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
    public static final TypeAdapter<Number> INTEGER;
    public static final TypeAdapterFactory INTEGER_FACTORY;
    public static final TypeAdapter<JsonElement> JSON_ELEMENT;
    public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
    public static final TypeAdapter<Locale> LOCALE;
    public static final TypeAdapterFactory LOCALE_FACTORY;
    public static final TypeAdapter<Number> LONG;
    public static final TypeAdapter<Number> NUMBER;
    public static final TypeAdapterFactory NUMBER_FACTORY;
    public static final TypeAdapter<Number> SHORT;
    public static final TypeAdapterFactory SHORT_FACTORY;
    public static final TypeAdapter<String> STRING;
    public static final TypeAdapter<StringBuffer> STRING_BUFFER;
    public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
    public static final TypeAdapter<StringBuilder> STRING_BUILDER;
    public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
    public static final TypeAdapterFactory STRING_FACTORY;
    public static final TypeAdapterFactory TIMESTAMP_FACTORY;
    public static final TypeAdapter<URI> URI;
    public static final TypeAdapterFactory URI_FACTORY;
    public static final TypeAdapter<URL> URL;
    public static final TypeAdapterFactory URL_FACTORY;
    public static final TypeAdapter<UUID> UUID;
    public static final TypeAdapterFactory UUID_FACTORY;

    private TypeAdapters() {
        throw new UnsupportedOperationException();
    }

    static {
        TypeAdapter<Class> nullSafe = new TypeAdapter<Class>() { // from class: com.google.gson.internal.bind.TypeAdapters.1
            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Class read(JsonReader jsonReader) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
        }.nullSafe();
        CLASS = nullSafe;
        CLASS_FACTORY = newFactory(Class.class, nullSafe);
        TypeAdapter<BitSet> nullSafe2 = new TypeAdapter<BitSet>() { // from class: com.google.gson.internal.bind.TypeAdapters.2
            @Override // com.google.gson.TypeAdapter
            public BitSet read(JsonReader jsonReader) throws IOException {
                BitSet bitSet = new BitSet();
                jsonReader.beginArray();
                JsonToken peek = jsonReader.peek();
                int i = 0;
                while (peek != JsonToken.END_ARRAY) {
                    int i2 = AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[peek.ordinal()];
                    if (i2 == 1) {
                        if (jsonReader.nextInt() == 0) {
                            i++;
                            peek = jsonReader.peek();
                        }
                        bitSet.set(i);
                        i++;
                        peek = jsonReader.peek();
                    } else if (i2 == 2) {
                        if (!jsonReader.nextBoolean()) {
                            i++;
                            peek = jsonReader.peek();
                        }
                        bitSet.set(i);
                        i++;
                        peek = jsonReader.peek();
                    } else if (i2 == 3) {
                        String nextString = jsonReader.nextString();
                        try {
                            if (Integer.parseInt(nextString) == 0) {
                                i++;
                                peek = jsonReader.peek();
                            }
                            bitSet.set(i);
                            i++;
                            peek = jsonReader.peek();
                        } catch (NumberFormatException unused) {
                            throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + nextString);
                        }
                    } else {
                        throw new JsonSyntaxException("Invalid bitset value type: " + peek);
                    }
                }
                jsonReader.endArray();
                return bitSet;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
                jsonWriter.beginArray();
                int length = bitSet.length();
                for (int i = 0; i < length; i++) {
                    jsonWriter.value(bitSet.get(i) ? 1L : 0L);
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
        BIT_SET = nullSafe2;
        BIT_SET_FACTORY = newFactory(BitSet.class, nullSafe2);
        TypeAdapter<Boolean> typeAdapter = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Boolean read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                if (peek == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                if (peek == JsonToken.STRING) {
                    return Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString()));
                }
                return Boolean.valueOf(jsonReader.nextBoolean());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool);
            }
        };
        BOOLEAN = typeAdapter;
        BOOLEAN_AS_STRING = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Boolean read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Boolean.valueOf(jsonReader.nextString());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool == null ? "null" : bool.toString());
            }
        };
        BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, typeAdapter);
        TypeAdapter<Number> typeAdapter2 = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        BYTE = typeAdapter2;
        BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, typeAdapter2);
        TypeAdapter<Number> typeAdapter3 = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Short.valueOf((short) jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        SHORT = typeAdapter3;
        SHORT_FACTORY = newFactory(Short.TYPE, Short.class, typeAdapter3);
        TypeAdapter<Number> typeAdapter4 = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        INTEGER = typeAdapter4;
        INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, typeAdapter4);
        TypeAdapter<AtomicInteger> nullSafe3 = new TypeAdapter<AtomicInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.8
            @Override // com.google.gson.TypeAdapter
            public AtomicInteger read(JsonReader jsonReader) throws IOException {
                try {
                    return new AtomicInteger(jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
                jsonWriter.value(atomicInteger.get());
            }
        }.nullSafe();
        ATOMIC_INTEGER = nullSafe3;
        ATOMIC_INTEGER_FACTORY = newFactory(AtomicInteger.class, nullSafe3);
        TypeAdapter<AtomicBoolean> nullSafe4 = new TypeAdapter<AtomicBoolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            @Override // com.google.gson.TypeAdapter
            public AtomicBoolean read(JsonReader jsonReader) throws IOException {
                return new AtomicBoolean(jsonReader.nextBoolean());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
                jsonWriter.value(atomicBoolean.get());
            }
        }.nullSafe();
        ATOMIC_BOOLEAN = nullSafe4;
        ATOMIC_BOOLEAN_FACTORY = newFactory(AtomicBoolean.class, nullSafe4);
        TypeAdapter<AtomicIntegerArray> nullSafe5 = new TypeAdapter<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.10
            @Override // com.google.gson.TypeAdapter
            public AtomicIntegerArray read(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    try {
                        arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i = 0; i < size; i++) {
                    atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
                jsonWriter.beginArray();
                int length = atomicIntegerArray.length();
                for (int i = 0; i < length; i++) {
                    jsonWriter.value(atomicIntegerArray.get(i));
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
        ATOMIC_INTEGER_ARRAY = nullSafe5;
        ATOMIC_INTEGER_ARRAY_FACTORY = newFactory(AtomicIntegerArray.class, nullSafe5);
        LONG = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Long.valueOf(jsonReader.nextLong());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        FLOAT = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Float.valueOf((float) jsonReader.nextDouble());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        DOUBLE = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Double.valueOf(jsonReader.nextDouble());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        TypeAdapter<Number> typeAdapter5 = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                int i = AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[peek.ordinal()];
                if (i == 1 || i == 3) {
                    return new LazilyParsedNumber(jsonReader.nextString());
                }
                if (i == 4) {
                    jsonReader.nextNull();
                    return null;
                }
                throw new JsonSyntaxException("Expecting number, got: " + peek);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        NUMBER = typeAdapter5;
        NUMBER_FACTORY = newFactory(Number.class, typeAdapter5);
        TypeAdapter<Character> typeAdapter6 = new TypeAdapter<Character>() { // from class: com.google.gson.internal.bind.TypeAdapters.15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Character read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                if (nextString.length() != 1) {
                    throw new JsonSyntaxException("Expecting character, got: " + nextString);
                }
                return Character.valueOf(nextString.charAt(0));
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Character ch) throws IOException {
                jsonWriter.value(ch == null ? null : String.valueOf(ch));
            }
        };
        CHARACTER = typeAdapter6;
        CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, typeAdapter6);
        TypeAdapter<String> typeAdapter7 = new TypeAdapter<String>() { // from class: com.google.gson.internal.bind.TypeAdapters.16
            @Override // com.google.gson.TypeAdapter
            public String read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                if (peek == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                if (peek == JsonToken.BOOLEAN) {
                    return Boolean.toString(jsonReader.nextBoolean());
                }
                return jsonReader.nextString();
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, String str) throws IOException {
                jsonWriter.value(str);
            }
        };
        STRING = typeAdapter7;
        BIG_DECIMAL = new TypeAdapter<BigDecimal>() { // from class: com.google.gson.internal.bind.TypeAdapters.17
            @Override // com.google.gson.TypeAdapter
            public BigDecimal read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return new BigDecimal(jsonReader.nextString());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
                jsonWriter.value(bigDecimal);
            }
        };
        BIG_INTEGER = new TypeAdapter<BigInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.18
            @Override // com.google.gson.TypeAdapter
            public BigInteger read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return new BigInteger(jsonReader.nextString());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
                jsonWriter.value(bigInteger);
            }
        };
        STRING_FACTORY = newFactory(String.class, typeAdapter7);
        TypeAdapter<StringBuilder> typeAdapter8 = new TypeAdapter<StringBuilder>() { // from class: com.google.gson.internal.bind.TypeAdapters.19
            @Override // com.google.gson.TypeAdapter
            public StringBuilder read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return new StringBuilder(jsonReader.nextString());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
                jsonWriter.value(sb == null ? null : sb.toString());
            }
        };
        STRING_BUILDER = typeAdapter8;
        STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, typeAdapter8);
        TypeAdapter<StringBuffer> typeAdapter9 = new TypeAdapter<StringBuffer>() { // from class: com.google.gson.internal.bind.TypeAdapters.20
            @Override // com.google.gson.TypeAdapter
            public StringBuffer read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return new StringBuffer(jsonReader.nextString());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        STRING_BUFFER = typeAdapter9;
        STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, typeAdapter9);
        TypeAdapter<URL> typeAdapter10 = new TypeAdapter<URL>() { // from class: com.google.gson.internal.bind.TypeAdapters.21
            @Override // com.google.gson.TypeAdapter
            public URL read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URL(nextString);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, URL url) throws IOException {
                jsonWriter.value(url == null ? null : url.toExternalForm());
            }
        };
        URL = typeAdapter10;
        URL_FACTORY = newFactory(URL.class, typeAdapter10);
        TypeAdapter<URI> typeAdapter11 = new TypeAdapter<URI>() { // from class: com.google.gson.internal.bind.TypeAdapters.22
            @Override // com.google.gson.TypeAdapter
            public URI read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    String nextString = jsonReader.nextString();
                    if ("null".equals(nextString)) {
                        return null;
                    }
                    return new URI(nextString);
                } catch (URISyntaxException e) {
                    throw new JsonIOException(e);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, URI uri) throws IOException {
                jsonWriter.value(uri == null ? null : uri.toASCIIString());
            }
        };
        URI = typeAdapter11;
        URI_FACTORY = newFactory(URI.class, typeAdapter11);
        TypeAdapter<InetAddress> typeAdapter12 = new TypeAdapter<InetAddress>() { // from class: com.google.gson.internal.bind.TypeAdapters.23
            @Override // com.google.gson.TypeAdapter
            public InetAddress read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return InetAddress.getByName(jsonReader.nextString());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        INET_ADDRESS = typeAdapter12;
        INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, typeAdapter12);
        TypeAdapter<UUID> typeAdapter13 = new TypeAdapter<UUID>() { // from class: com.google.gson.internal.bind.TypeAdapters.24
            @Override // com.google.gson.TypeAdapter
            public UUID read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return UUID.fromString(jsonReader.nextString());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
                jsonWriter.value(uuid == null ? null : uuid.toString());
            }
        };
        UUID = typeAdapter13;
        UUID_FACTORY = newFactory(UUID.class, typeAdapter13);
        TypeAdapter<Currency> nullSafe6 = new TypeAdapter<Currency>() { // from class: com.google.gson.internal.bind.TypeAdapters.25
            @Override // com.google.gson.TypeAdapter
            public Currency read(JsonReader jsonReader) throws IOException {
                return Currency.getInstance(jsonReader.nextString());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Currency currency) throws IOException {
                jsonWriter.value(currency.getCurrencyCode());
            }
        }.nullSafe();
        CURRENCY = nullSafe6;
        CURRENCY_FACTORY = newFactory(Currency.class, nullSafe6);
        TIMESTAMP_FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.26
            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() != Timestamp.class) {
                    return null;
                }
                final TypeAdapter<T> adapter = gson.getAdapter(Date.class);
                return (TypeAdapter<T>) new TypeAdapter<Timestamp>() { // from class: com.google.gson.internal.bind.TypeAdapters.26.1
                    @Override // com.google.gson.TypeAdapter
                    public Timestamp read(JsonReader jsonReader) throws IOException {
                        Date date = (Date) adapter.read(jsonReader);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.google.gson.TypeAdapter
                    public void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                        adapter.write(jsonWriter, timestamp);
                    }
                };
            }
        };
        TypeAdapter<Calendar> typeAdapter14 = new TypeAdapter<Calendar>() { // from class: com.google.gson.internal.bind.TypeAdapters.27
            private static final String DAY_OF_MONTH = "dayOfMonth";
            private static final String HOUR_OF_DAY = "hourOfDay";
            private static final String MINUTE = "minute";
            private static final String MONTH = "month";
            private static final String SECOND = "second";
            private static final String YEAR = "year";

            @Override // com.google.gson.TypeAdapter
            public Calendar read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                jsonReader.beginObject();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (jsonReader.peek() != JsonToken.END_OBJECT) {
                    String nextName = jsonReader.nextName();
                    int nextInt = jsonReader.nextInt();
                    if (YEAR.equals(nextName)) {
                        i = nextInt;
                    } else if (MONTH.equals(nextName)) {
                        i2 = nextInt;
                    } else if (DAY_OF_MONTH.equals(nextName)) {
                        i3 = nextInt;
                    } else if (HOUR_OF_DAY.equals(nextName)) {
                        i4 = nextInt;
                    } else if (MINUTE.equals(nextName)) {
                        i5 = nextInt;
                    } else if (SECOND.equals(nextName)) {
                        i6 = nextInt;
                    }
                }
                jsonReader.endObject();
                return new GregorianCalendar(i, i2, i3, i4, i5, i6);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Calendar calendar) throws IOException {
                if (calendar == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.beginObject();
                jsonWriter.name(YEAR);
                jsonWriter.value(calendar.get(1));
                jsonWriter.name(MONTH);
                jsonWriter.value(calendar.get(2));
                jsonWriter.name(DAY_OF_MONTH);
                jsonWriter.value(calendar.get(5));
                jsonWriter.name(HOUR_OF_DAY);
                jsonWriter.value(calendar.get(11));
                jsonWriter.name(MINUTE);
                jsonWriter.value(calendar.get(12));
                jsonWriter.name(SECOND);
                jsonWriter.value(calendar.get(13));
                jsonWriter.endObject();
            }
        };
        CALENDAR = typeAdapter14;
        CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, typeAdapter14);
        TypeAdapter<Locale> typeAdapter15 = new TypeAdapter<Locale>() { // from class: com.google.gson.internal.bind.TypeAdapters.28
            @Override // com.google.gson.TypeAdapter
            public Locale read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (nextToken2 == null && nextToken3 == null) {
                    return new Locale(nextToken);
                }
                if (nextToken3 == null) {
                    return new Locale(nextToken, nextToken2);
                }
                return new Locale(nextToken, nextToken2, nextToken3);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Locale locale) throws IOException {
                jsonWriter.value(locale == null ? null : locale.toString());
            }
        };
        LOCALE = typeAdapter15;
        LOCALE_FACTORY = newFactory(Locale.class, typeAdapter15);
        TypeAdapter<JsonElement> typeAdapter16 = new TypeAdapter<JsonElement>() { // from class: com.google.gson.internal.bind.TypeAdapters.29
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public JsonElement read(JsonReader jsonReader) throws IOException {
                switch (AnonymousClass36.$SwitchMap$com$google$gson$stream$JsonToken[jsonReader.peek().ordinal()]) {
                    case 1:
                        return new JsonPrimitive(new LazilyParsedNumber(jsonReader.nextString()));
                    case 2:
                        return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
                    case 3:
                        return new JsonPrimitive(jsonReader.nextString());
                    case 4:
                        jsonReader.nextNull();
                        return JsonNull.INSTANCE;
                    case 5:
                        JsonArray jsonArray = new JsonArray();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonArray.add(read(jsonReader));
                        }
                        jsonReader.endArray();
                        return jsonArray;
                    case 6:
                        JsonObject jsonObject = new JsonObject();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            jsonObject.add(jsonReader.nextName(), read(jsonReader));
                        }
                        jsonReader.endObject();
                        return jsonObject;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
                if (jsonElement == null || jsonElement.isJsonNull()) {
                    jsonWriter.nullValue();
                    return;
                }
                if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        jsonWriter.value(asJsonPrimitive.getAsNumber());
                        return;
                    } else if (asJsonPrimitive.isBoolean()) {
                        jsonWriter.value(asJsonPrimitive.getAsBoolean());
                        return;
                    } else {
                        jsonWriter.value(asJsonPrimitive.getAsString());
                        return;
                    }
                }
                if (jsonElement.isJsonArray()) {
                    jsonWriter.beginArray();
                    Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
                    while (it.hasNext()) {
                        write(jsonWriter, it.next());
                    }
                    jsonWriter.endArray();
                    return;
                }
                if (jsonElement.isJsonObject()) {
                    jsonWriter.beginObject();
                    for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                        jsonWriter.name(entry.getKey());
                        write(jsonWriter, entry.getValue());
                    }
                    jsonWriter.endObject();
                    return;
                }
                throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
            }
        };
        JSON_ELEMENT = typeAdapter16;
        JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, typeAdapter16);
        ENUM_FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.30
            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new EnumTypeAdapter(rawType);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$36, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass36 {
        static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes3.dex */
    private static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
        private final Map<String, T> nameToConstant = new HashMap();
        private final Map<T, String> constantToName = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            try {
                for (final Field field : cls.getDeclaredFields()) {
                    if (field.isEnumConstant()) {
                        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.google.gson.internal.bind.TypeAdapters.EnumTypeAdapter.1
                            @Override // java.security.PrivilegedAction
                            public Void run() {
                                field.setAccessible(true);
                                return null;
                            }
                        });
                        Enum r4 = (Enum) field.get(null);
                        String name = r4.name();
                        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
                        if (serializedName != null) {
                            name = serializedName.value();
                            for (String str : serializedName.alternate()) {
                                this.nameToConstant.put(str, r4);
                            }
                        }
                        this.nameToConstant.put(name, r4);
                        this.constantToName.put(r4, name);
                    }
                }
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return this.nameToConstant.get(jsonReader.nextString());
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            jsonWriter.value(t == null ? null : this.constantToName.get(t));
        }
    }

    public static <TT> TypeAdapterFactory newFactory(final TypeToken<TT> typeToken, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.31
            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken2) {
                if (typeToken2.equals(TypeToken.this)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() == cls) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.34
            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <T1> TypeAdapterFactory newTypeHierarchyFactory(final Class<T1> cls, final TypeAdapter<T1> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.35
            @Override // com.google.gson.TypeAdapterFactory
            public <T2> TypeAdapter<T2> create(Gson gson, TypeToken<T2> typeToken) {
                final Class<? super T2> rawType = typeToken.getRawType();
                if (cls.isAssignableFrom(rawType)) {
                    return (TypeAdapter<T2>) new TypeAdapter<T1>() { // from class: com.google.gson.internal.bind.TypeAdapters.35.1
                        @Override // com.google.gson.TypeAdapter
                        public void write(JsonWriter jsonWriter, T1 t1) throws IOException {
                            typeAdapter.write(jsonWriter, t1);
                        }

                        @Override // com.google.gson.TypeAdapter
                        public T1 read(JsonReader jsonReader) throws IOException {
                            T1 t1 = (T1) typeAdapter.read(jsonReader);
                            if (t1 == null || rawType.isInstance(t1)) {
                                return t1;
                            }
                            throw new JsonSyntaxException("Expected a " + rawType.getName() + " but was " + t1.getClass().getName());
                        }
                    };
                }
                return null;
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }
}
