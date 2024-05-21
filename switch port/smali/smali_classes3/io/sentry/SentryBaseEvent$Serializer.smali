.class public final Lio/sentry/SentryBaseEvent$Serializer;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/SentryBaseEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$000(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "event_id"

    .line 351
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$000(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_0
    const-string p0, "contexts"

    .line 353
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$100(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 354
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$200(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "sdk"

    .line 355
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$200(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 357
    :cond_1
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$300(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Request;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "request"

    .line 358
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$300(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Request;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 360
    :cond_2
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$400(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$400(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "tags"

    .line 361
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$400(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 363
    :cond_3
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$500(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "release"

    .line 364
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$500(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 366
    :cond_4
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$600(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p0, "environment"

    .line 367
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$600(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 369
    :cond_5
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$700(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string p0, "platform"

    .line 370
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$700(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 372
    :cond_6
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$800(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/User;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p0, "user"

    .line 373
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$800(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/User;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 375
    :cond_7
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$900(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p0, "server_name"

    .line 376
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$900(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 378
    :cond_8
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1000(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    const-string p0, "dist"

    .line 379
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1000(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 381
    :cond_9
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1100(Lio/sentry/SentryBaseEvent;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1100(Lio/sentry/SentryBaseEvent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "breadcrumbs"

    .line 382
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1100(Lio/sentry/SentryBaseEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 384
    :cond_a
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1200(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/DebugMeta;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string p0, "debug_meta"

    .line 385
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1200(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/DebugMeta;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 387
    :cond_b
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1300(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1300(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const-string p0, "extra"

    .line 388
    invoke-interface {p2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$1300(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_c
    return-void
.end method
