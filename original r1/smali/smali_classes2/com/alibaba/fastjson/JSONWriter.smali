.class public Lcom/alibaba/fastjson/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONStreamContext;

.field private serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

.field private writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 23
    new-instance p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    return-void
.end method

.method private afterWriter()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3ed

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x3eb

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3ea

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 173
    iput v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private beforeWrite()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3eb

    const/16 v2, 0x2c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 141
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 138
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x3a

    .line 135
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_0
    return-void
.end method

.method private beginStructure()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 75
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 76
    iget v1, v1, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :pswitch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x2c

    .line 81
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x3a

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private endStructure()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 98
    iget-object v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x3e9

    const/16 v2, 0x3ea

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0x3ed

    goto :goto_0

    :cond_2
    const/16 v2, 0x3eb

    :cond_3
    :goto_0
    if-eq v2, v3, :cond_4

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 121
    iput v2, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    return-void
.end method

.method public endArray()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5d

    .line 93
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 94
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->endStructure()V

    return-void
.end method

.method public endObject()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x7d

    .line 39
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->endStructure()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    return-void
.end method

.method public startArray()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beginStructure()V

    .line 70
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v2, 0x3ec

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x5b

    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method

.method public startObject()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beginStructure()V

    .line 34
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v0, 0x7b

    .line 35
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method

.method public writeKey(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONWriter;->writeObject(Ljava/lang/String;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beforeWrite()V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 61
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->afterWriter()V

    return-void
.end method

.method public writeObject(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beforeWrite()V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 54
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->afterWriter()V

    return-void
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONWriter;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
