.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .locals 2

    .line 288
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 289
    check-cast p0, Ljava/lang/Number;

    .line 290
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->deepCopy()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public deepCopy()Lcom/google/gson/JsonPrimitive;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 266
    :cond_1
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 268
    iget-object p0, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 270
    :cond_3
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 273
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_8

    .line 274
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 277
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v2, p0

    if-eqz v4, :cond_7

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :cond_7
    :goto_2
    return v0

    .line 280
    :cond_8
    iget-object p0, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_3
    return v1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 172
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 183
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 102
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAsByte()B
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    :goto_0
    return p0
.end method

.method public getAsCharacter()C
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public getAsDouble()D
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getAsFloat()F
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getAsInt()I
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getAsLong()J
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 125
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Number;

    :goto_0
    return-object v0
.end method

.method public getAsShort()S
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    :goto_0
    return p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 147
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 149
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p0, 0x1f

    return p0

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 251
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 91
    instance-of p0, p0, Ljava/lang/Boolean;

    return p0
.end method

.method public isNumber()Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 114
    instance-of p0, p0, Ljava/lang/Number;

    return p0
.end method

.method public isString()Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 134
    instance-of p0, p0, Ljava/lang/String;

    return p0
.end method
