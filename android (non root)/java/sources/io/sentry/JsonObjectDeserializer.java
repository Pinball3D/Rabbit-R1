package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class JsonObjectDeserializer {
    private final ArrayList<Token> tokens = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface NextValue {
        Object nextValue() throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface Token {
        Object getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$parse$3() throws IOException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class TokenName implements Token {
        final String value;

        @Override // io.sentry.JsonObjectDeserializer.Token
        public Object getValue() {
            return this.value;
        }

        TokenName(String str) {
            this.value = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class TokenPrimitive implements Token {
        final Object value;

        @Override // io.sentry.JsonObjectDeserializer.Token
        public Object getValue() {
            return this.value;
        }

        TokenPrimitive(Object obj) {
            this.value = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class TokenArray implements Token {
        final ArrayList<Object> value;

        @Override // io.sentry.JsonObjectDeserializer.Token
        public Object getValue() {
            return this.value;
        }

        private TokenArray() {
            this.value = new ArrayList<>();
        }

        /* synthetic */ TokenArray(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class TokenMap implements Token {
        final HashMap<String, Object> value;

        @Override // io.sentry.JsonObjectDeserializer.Token
        public Object getValue() {
            return this.value;
        }

        private TokenMap() {
            this.value = new HashMap<>();
        }

        /* synthetic */ TokenMap(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public Object deserialize(JsonObjectReader jsonObjectReader) throws IOException {
        parse(jsonObjectReader);
        Token currentToken = getCurrentToken();
        if (currentToken != null) {
            return currentToken.getValue();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.JsonObjectDeserializer$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$sentry$vendor$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$io$sentry$vendor$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$sentry$vendor$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void parse(final JsonObjectReader jsonObjectReader) throws IOException {
        boolean handleArrayOrMapEnd;
        AnonymousClass1 anonymousClass1 = null;
        switch (AnonymousClass1.$SwitchMap$io$sentry$vendor$gson$stream$JsonToken[jsonObjectReader.peek().ordinal()]) {
            case 1:
                jsonObjectReader.beginArray();
                pushCurrentToken(new TokenArray(anonymousClass1));
                parse(jsonObjectReader);
            case 2:
                jsonObjectReader.endArray();
                handleArrayOrMapEnd = handleArrayOrMapEnd();
                break;
            case 3:
                jsonObjectReader.beginObject();
                pushCurrentToken(new TokenMap(anonymousClass1));
                parse(jsonObjectReader);
            case 4:
                jsonObjectReader.endObject();
                handleArrayOrMapEnd = handleArrayOrMapEnd();
                break;
            case 5:
                pushCurrentToken(new TokenName(jsonObjectReader.nextName()));
                parse(jsonObjectReader);
            case 6:
                handleArrayOrMapEnd = handlePrimitive(new NextValue() { // from class: io.sentry.JsonObjectDeserializer$$ExternalSyntheticLambda0
                    @Override // io.sentry.JsonObjectDeserializer.NextValue
                    public final Object nextValue() {
                        Object nextString;
                        nextString = JsonObjectReader.this.nextString();
                        return nextString;
                    }
                });
                break;
            case 7:
                handleArrayOrMapEnd = handlePrimitive(new NextValue() { // from class: io.sentry.JsonObjectDeserializer$$ExternalSyntheticLambda1
                    @Override // io.sentry.JsonObjectDeserializer.NextValue
                    public final Object nextValue() {
                        return JsonObjectDeserializer.this.m5622lambda$parse$1$iosentryJsonObjectDeserializer(jsonObjectReader);
                    }
                });
                break;
            case 8:
                handleArrayOrMapEnd = handlePrimitive(new NextValue() { // from class: io.sentry.JsonObjectDeserializer$$ExternalSyntheticLambda2
                    @Override // io.sentry.JsonObjectDeserializer.NextValue
                    public final Object nextValue() {
                        Object valueOf;
                        valueOf = Boolean.valueOf(JsonObjectReader.this.nextBoolean());
                        return valueOf;
                    }
                });
                break;
            case 9:
                jsonObjectReader.nextNull();
                handleArrayOrMapEnd = handlePrimitive(new NextValue() { // from class: io.sentry.JsonObjectDeserializer$$ExternalSyntheticLambda3
                    @Override // io.sentry.JsonObjectDeserializer.NextValue
                    public final Object nextValue() {
                        return JsonObjectDeserializer.lambda$parse$3();
                    }
                });
                break;
            case 10:
                return;
            default:
                parse(jsonObjectReader);
        }
        if (handleArrayOrMapEnd) {
            return;
        }
        parse(jsonObjectReader);
    }

    private boolean handleArrayOrMapEnd() {
        if (hasOneToken()) {
            return true;
        }
        Token currentToken = getCurrentToken();
        popCurrentToken();
        if (getCurrentToken() instanceof TokenName) {
            TokenName tokenName = (TokenName) getCurrentToken();
            popCurrentToken();
            TokenMap tokenMap = (TokenMap) getCurrentToken();
            if (tokenName == null || currentToken == null || tokenMap == null) {
                return false;
            }
            tokenMap.value.put(tokenName.value, currentToken.getValue());
            return false;
        }
        if (!(getCurrentToken() instanceof TokenArray)) {
            return false;
        }
        TokenArray tokenArray = (TokenArray) getCurrentToken();
        if (currentToken == null || tokenArray == null) {
            return false;
        }
        tokenArray.value.add(currentToken.getValue());
        return false;
    }

    private boolean handlePrimitive(NextValue nextValue) throws IOException {
        Object nextValue2 = nextValue.nextValue();
        if (getCurrentToken() == null && nextValue2 != null) {
            pushCurrentToken(new TokenPrimitive(nextValue2));
            return true;
        }
        if (getCurrentToken() instanceof TokenName) {
            TokenName tokenName = (TokenName) getCurrentToken();
            popCurrentToken();
            ((TokenMap) getCurrentToken()).value.put(tokenName.value, nextValue2);
            return false;
        }
        if (!(getCurrentToken() instanceof TokenArray)) {
            return false;
        }
        ((TokenArray) getCurrentToken()).value.add(nextValue2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nextNumber, reason: merged with bridge method [inline-methods] */
    public Object m5622lambda$parse$1$iosentryJsonObjectDeserializer(JsonObjectReader jsonObjectReader) throws IOException {
        try {
            try {
                return Integer.valueOf(jsonObjectReader.nextInt());
            } catch (Exception unused) {
                return Double.valueOf(jsonObjectReader.nextDouble());
            }
        } catch (Exception unused2) {
            return Long.valueOf(jsonObjectReader.nextLong());
        }
    }

    private Token getCurrentToken() {
        if (this.tokens.isEmpty()) {
            return null;
        }
        return this.tokens.get(r1.size() - 1);
    }

    private void pushCurrentToken(Token token) {
        this.tokens.add(token);
    }

    private void popCurrentToken() {
        if (this.tokens.isEmpty()) {
            return;
        }
        this.tokens.remove(r1.size() - 1);
    }

    private boolean hasOneToken() {
        return this.tokens.size() == 1;
    }
}
