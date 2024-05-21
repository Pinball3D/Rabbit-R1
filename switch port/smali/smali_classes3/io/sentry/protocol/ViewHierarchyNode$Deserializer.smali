.class public final Lio/sentry/protocol/ViewHierarchyNode$Deserializer;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/ViewHierarchyNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchyNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    new-instance v0, Lio/sentry/protocol/ViewHierarchyNode;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchyNode;-><init>()V

    .line 212
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v1, 0x0

    .line 213
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_c

    .line 214
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "visibility"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "children"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_4
    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v3, "tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_7
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_8
    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_9
    const-string v3, "identifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_a
    const-string v3, "rendering_system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    if-nez v1, :cond_b

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    :cond_b
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$802(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 247
    :pswitch_1
    invoke-virtual {p1, p2, p0}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$1002(Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$402(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$902(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 220
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$102(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 226
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$302(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 238
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$702(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 235
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$602(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 232
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$502(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 223
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$202(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 217
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->access$002(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 257
    :cond_c
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    .line 259
    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setUnknown(Ljava/util/Map;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6a64acbe -> :sswitch_a
        -0x60775357 -> :sswitch_9
        -0x48c76ed9 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x1bf9a -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x589b15e -> :sswitch_3
        0x6be2dc6 -> :sswitch_2
        0x62ea5dff -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchyNode;

    move-result-object p0

    return-object p0
.end method
