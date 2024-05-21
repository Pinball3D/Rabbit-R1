.class public final Lio/sentry/SentryEvent$JsonKeys;
.super Ljava/lang/Object;
.source "SentryEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "exception"

.field public static final FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LOGGER:Ljava/lang/String; = "logger"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MODULES:Ljava/lang/String; = "modules"

.field public static final THREADS:Ljava/lang/String; = "threads"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRANSACTION:Ljava/lang/String; = "transaction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
