.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;
.super Ljava/lang/Object;
.source "UberEventHandler.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUberEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UberEventHandler.kt\ntech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,67:1\n37#2,2:68\n*S KotlinDebug\n*F\n+ 1 UberEventHandler.kt\ntech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler\n*L\n30#1:68,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0019\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000eJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;",
        "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;",
        "()V",
        "interestedIn",
        "",
        "getInterestedIn",
        "()Ljava/lang/String;",
        "convertToDropOffAddress",
        "payload",
        "Lcom/alibaba/fastjson/JSONObject;",
        "convertToPickupAddress",
        "convertToRiderShareProducts",
        "",
        "Ltech/rabbit/r1launcher/models/RideProduct;",
        "(Lcom/alibaba/fastjson/JSONObject;)[Ltech/rabbit/r1launcher/models/RideProduct;",
        "handleEvent",
        "",
        "event",
        "rawPayload",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final interestedIn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->UBER:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;->interestedIn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final convertToDropOffAddress(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 0

    const-string p0, "payload"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convertToPickupAddress(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 0

    const-string p0, "payload"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convertToRiderShareProducts(Lcom/alibaba/fastjson/JSONObject;)[Ltech/rabbit/r1launcher/models/RideProduct;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "payload"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "products"

    .line 13
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 15
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 16
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "estMinutesToPickup"

    .line 17
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 18
    new-instance v15, Ltech/rabbit/r1launcher/models/RideProduct;

    const-string v8, "name"

    .line 19
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "getString(...)"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "capacity"

    .line 20
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "getInteger(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 21
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 22
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 p1, v4

    int-to-long v3, v7

    const-wide/32 v16, 0xea60

    mul-long v3, v3, v16

    add-long/2addr v13, v3

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    const-string v3, "estPriceUsdCents"

    .line 23
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    const-string v3, "id"

    .line 24
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "routePolyline"

    .line 25
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v15

    move v11, v6

    move-object v4, v15

    move-object v15, v3

    .line 18
    invoke-direct/range {v8 .. v15}, Ltech/rabbit/r1launcher/models/RideProduct;-><init>(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ltech/rabbit/r1launcher/models/RideProduct;

    .line 69
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, [Ltech/rabbit/r1launcher/models/RideProduct;

    return-object v0
.end method

.method public getInterestedIn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;->interestedIn:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rawPayload"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "<get-keys>(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 45
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "updateDropoffAddressResult"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    sget-object p3, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;->convertToDropOffAddress(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendUpdateDropOffAddress(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "getHistoryResults"

    .line 46
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    sget-object p3, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toJSONString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendRideHistory(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v1, "updatePickupAddressResult"

    .line 46
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 52
    :cond_3
    sget-object p3, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;->convertToPickupAddress(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendUpdatePickUpAddress(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "productSelection"

    .line 46
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 48
    sget-object p3, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;->convertToRiderShareProducts(Lcom/alibaba/fastjson/JSONObject;)[Ltech/rabbit/r1launcher/models/RideProduct;

    move-result-object v0

    invoke-virtual {p3, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendRiderShareProductSelection([Ltech/rabbit/r1launcher/models/RideProduct;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x570d1ea3 -> :sswitch_3
        -0x7038774 -> :sswitch_2
        0x21412db8 -> :sswitch_1
        0x653f375a -> :sswitch_0
    .end sparse-switch
.end method

.method public onEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler$DefaultImpls;->onEvent(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
