.class public final Lio/sentry/JsonObjectDeserializer;
.super Ljava/lang/Object;
.source "JsonObjectDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/JsonObjectDeserializer$Token;,
        Lio/sentry/JsonObjectDeserializer$TokenArray;,
        Lio/sentry/JsonObjectDeserializer$TokenMap;,
        Lio/sentry/JsonObjectDeserializer$TokenName;,
        Lio/sentry/JsonObjectDeserializer$NextValue;,
        Lio/sentry/JsonObjectDeserializer$TokenPrimitive;
    }
.end annotation


# instance fields
.field private final tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/sentry/JsonObjectDeserializer$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    return-void
.end method

.method private getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;
    .locals 1

    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/JsonObjectDeserializer$Token;

    return-object p0
.end method

.method private handleArrayOrMapEnd()Z
    .locals 2

    .line 132
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->hasOneToken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 135
    :cond_0
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    .line 136
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->popCurrentToken()V

    .line 138
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 140
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->popCurrentToken()V

    .line 142
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object p0

    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenMap;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 144
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenMap;->value:Ljava/util/HashMap;

    iget-object v1, v1, Lio/sentry/JsonObjectDeserializer$TokenName;->value:Ljava/lang/String;

    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    if-eqz v1, :cond_2

    .line 147
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object p0

    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 149
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenArray;->value:Ljava/util/ArrayList;

    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Lio/sentry/JsonObjectDeserializer$NextValue;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 158
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    const/4 p0, 0x1

    return p0

    .line 161
    :cond_0
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/JsonObjectDeserializer$TokenName;

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    check-cast v0, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 163
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->popCurrentToken()V

    .line 165
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object p0

    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenMap;

    .line 166
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenMap;->value:Ljava/util/HashMap;

    iget-object v0, v0, Lio/sentry/JsonObjectDeserializer$TokenName;->value:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    if-eqz v0, :cond_2

    .line 169
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object p0

    check-cast p0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 170
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenArray;->value:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private hasOneToken()Z
    .locals 1

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$parse$0(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parse$2(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parse$3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private nextNumber(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 182
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 186
    :catch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private parse(Lio/sentry/JsonObjectReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    sget-object v0, Lio/sentry/JsonObjectDeserializer$1;->$SwitchMap$io$sentry$vendor$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/vendor/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 119
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextNull()V

    .line 120
    new-instance v0, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    goto :goto_0

    .line 116
    :pswitch_1
    new-instance v0, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    goto :goto_0

    .line 111
    :pswitch_2
    new-instance v0, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda1;-><init>(Lio/sentry/JsonObjectDeserializer;Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v0, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    goto :goto_0

    .line 103
    :pswitch_4
    new-instance v0, Lio/sentry/JsonObjectDeserializer$TokenName;

    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/JsonObjectDeserializer$TokenName;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    goto :goto_1

    .line 99
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    .line 100
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->handleArrayOrMapEnd()Z

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 96
    new-instance v0, Lio/sentry/JsonObjectDeserializer$TokenMap;

    invoke-direct {v0, v1}, Lio/sentry/JsonObjectDeserializer$TokenMap;-><init>(Lio/sentry/JsonObjectDeserializer$1;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    goto :goto_1

    .line 91
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endArray()V

    .line 92
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->handleArrayOrMapEnd()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginArray()V

    .line 88
    new-instance v0, Lio/sentry/JsonObjectDeserializer$TokenArray;

    invoke-direct {v0, v1}, Lio/sentry/JsonObjectDeserializer$TokenArray;-><init>(Lio/sentry/JsonObjectDeserializer$1;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    .line 127
    :goto_1
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->parse(Lio/sentry/JsonObjectReader;)V

    :cond_0
    :pswitch_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private popCurrentToken()V
    .locals 1

    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->parse(Lio/sentry/JsonObjectReader;)V

    .line 73
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method synthetic lambda$parse$1$io-sentry-JsonObjectDeserializer(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->nextNumber(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
