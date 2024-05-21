.class public Lcom/alibaba/fastjson/serializer/BigDecimalCodec;
.super Ljava/lang/Object;
.source "BigDecimalCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 68
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/4 v0, 0x2

    const/16 v1, 0x10

    if-ne p3, v0, :cond_1

    .line 72
    const-class p1, Ljava/math/BigInteger;

    if-ne p2, p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 75
    new-instance p0, Ljava/math/BigInteger;

    const/16 p2, 0xa

    invoke-direct {p0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 78
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 85
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 87
    const-class p0, Ljava/math/BigInteger;

    if-ne p2, p0, :cond_3

    .line 88
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    const/16 p2, -0x64

    if-lt p0, p2, :cond_2

    const/16 p2, 0x64

    if-gt p0, p2, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_3
    return-object p1

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_5
    const-class p1, Ljava/math/BigInteger;

    if-ne p2, p1, :cond_6

    .line 105
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 108
    :cond_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_1

    .line 44
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    .line 52
    :cond_1
    instance-of p1, p2, Ljava/math/BigInteger;

    if-eqz p1, :cond_2

    .line 53
    check-cast p2, Ljava/math/BigInteger;

    .line 54
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_2
    check-cast p2, Ljava/math/BigDecimal;

    .line 59
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 61
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p3, p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, p3

    if-eqz p1, :cond_3

    const-class p1, Ljava/math/BigDecimal;

    if-eq p4, p1, :cond_3

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x2e

    .line 62
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3
    return-void
.end method
