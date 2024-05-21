.class public Lcom/alibaba/fastjson/parser/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected enumNameHashCodes:[J

.field protected final enums:[Ljava/lang/Enum;

.field protected final ordinalEnums:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 24
    array-length v0, p1

    new-array v1, v0, [J

    .line 25
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumNameHashCodes:[J

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 26
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 27
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v6, p1

    .line 29
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 30
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-long v7, v7

    xor-long/2addr v4, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 34
    :cond_0
    aput-wide v4, v1, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumNameHashCodes:[J

    .line 35
    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumNameHashCodes:[J

    .line 38
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 40
    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Enum;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enums:[Ljava/lang/Enum;

    move v2, p1

    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumNameHashCodes:[J

    .line 41
    array-length v3, v3

    if-ge v2, v3, :cond_4

    move v3, p1

    :goto_3
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumNameHashCodes:[J

    .line 43
    aget-wide v4, v4, v2

    aget-wide v6, v1, v3

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enums:[Ljava/lang/Enum;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 44
    aget-object v3, v5, v3

    aput-object v3, v4, v2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 56
    iget p3, p2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    const-string v1, " error, value : "

    const/16 v2, 0x10

    const-string v3, "parse enum "

    if-ne p3, v0, :cond_1

    .line 58
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p1

    .line 59
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 61
    array-length p3, p2

    if-gt p1, p3, :cond_0

    .line 65
    aget-object p0, p2, p1

    return-object p0

    .line 62
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v0, 0x4

    const/4 v4, 0x0

    if-ne p3, v0, :cond_5

    .line 67
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    return-object v4

    :cond_2
    const-wide p2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v1, v1

    xor-long/2addr p2, v1

    const-wide v1, 0x100000001b3L

    mul-long/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumNameHashCodes:[J

    .line 81
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_4

    return-object v4

    :cond_4
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enums:[Ljava/lang/Enum;

    .line 86
    aget-object p0, p0, p1

    return-object p0

    :cond_5
    const/16 v0, 0x8

    if-ne p3, v0, :cond_6

    .line 89
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v4

    .line 93
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 98
    throw p0
.end method
