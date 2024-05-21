.class final Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object p4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v0, "[]"

    if-nez p2, :cond_1

    .line 39
    iget p0, p4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    .line 48
    :cond_1
    instance-of v1, p2, [Z

    const/16 v2, 0x2c

    const/16 v3, 0x5d

    const/16 v4, 0x5b

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 49
    check-cast p2, [Z

    check-cast p2, [Z

    .line 50
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 51
    :goto_1
    array-length p0, p2

    if-ge v5, p0, :cond_3

    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 55
    :cond_2
    aget-boolean p0, p2, v5

    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 61
    :cond_4
    instance-of v1, p2, [B

    if-eqz v1, :cond_5

    .line 62
    check-cast p2, [B

    check-cast p2, [B

    .line 63
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    return-void

    .line 67
    :cond_5
    instance-of v1, p2, [C

    if-eqz v1, :cond_6

    .line 68
    check-cast p2, [C

    check-cast p2, [C

    .line 69
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_6
    instance-of v1, p2, [D

    const/4 v6, -0x1

    if-eqz v1, :cond_b

    .line 74
    check-cast p2, [D

    check-cast p2, [D

    .line 75
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    if-ne p0, v6, :cond_7

    .line 80
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 84
    :cond_7
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    if-ge v5, p0, :cond_9

    .line 86
    aget-wide v0, p2, v5

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 89
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_3

    .line 91
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    :goto_3
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 97
    :cond_9
    aget-wide p0, p2, p0

    .line 99
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 100
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_4

    .line 102
    :cond_a
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 105
    :goto_4
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 109
    :cond_b
    instance-of v1, p2, [F

    if-eqz v1, :cond_10

    .line 110
    check-cast p2, [F

    check-cast p2, [F

    .line 111
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    if-ne p0, v6, :cond_c

    .line 116
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 120
    :cond_c
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_5
    if-ge v5, p0, :cond_e

    .line 122
    aget p1, p2, v5

    .line 124
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 125
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_6

    .line 127
    :cond_d
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 130
    :goto_6
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 133
    :cond_e
    aget p0, p2, p0

    .line 135
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 136
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_7

    .line 138
    :cond_f
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 141
    :goto_7
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 145
    :cond_10
    instance-of v0, p2, [I

    if-eqz v0, :cond_13

    .line 146
    check-cast p2, [I

    check-cast p2, [I

    .line 148
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 149
    :goto_8
    array-length p0, p2

    if-ge v5, p0, :cond_12

    if-eqz v5, :cond_11

    .line 151
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 153
    :cond_11
    aget p0, p2, v5

    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 155
    :cond_12
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 159
    :cond_13
    instance-of v0, p2, [J

    if-eqz v0, :cond_16

    .line 160
    check-cast p2, [J

    check-cast p2, [J

    .line 162
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 163
    :goto_9
    array-length p0, p2

    if-ge v5, p0, :cond_15

    if-eqz v5, :cond_14

    .line 165
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 167
    :cond_14
    aget-wide p0, p2, v5

    invoke-virtual {p4, p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 169
    :cond_15
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 173
    :cond_16
    instance-of v0, p2, [S

    if-eqz v0, :cond_19

    .line 174
    check-cast p2, [S

    check-cast p2, [S

    .line 175
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 176
    :goto_a
    array-length p0, p2

    if-ge v5, p0, :cond_18

    if-eqz v5, :cond_17

    .line 178
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 180
    :cond_17
    aget-short p0, p2, v5

    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 182
    :cond_18
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 186
    :cond_19
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 187
    array-length v1, v0

    .line 189
    iget-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 190
    invoke-virtual {p1, v6, p2, p3, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 193
    :try_start_0
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_b
    if-ge v5, v1, :cond_1e

    if-eqz v5, :cond_1a

    .line 196
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 198
    :cond_1a
    aget-object p3, v0, v5

    if-nez p3, :cond_1c

    .line 201
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p3

    if-eqz p3, :cond_1b

    instance-of p3, p2, [Ljava/lang/String;

    if-eqz p3, :cond_1b

    const-string p3, ""

    .line 202
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    const-string p3, "null"

    .line 204
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_c

    .line 206
    :cond_1c
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    const/4 v8, 0x0

    if-ne v4, v7, :cond_1d

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, p1, p3, v7, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    .line 209
    :cond_1d
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 210
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, p1, p3, v7, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 213
    :cond_1e
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iput-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_0
    move-exception p0

    iput-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 216
    throw p0
.end method
