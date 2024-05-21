.class public final Lio/sentry/protocol/SentryStackTrace$JsonKeys;
.super Ljava/lang/Object;
.source "SentryStackTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryStackTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final FRAMES:Ljava/lang/String; = "frames"

.field public static final REGISTERS:Ljava/lang/String; = "registers"

.field public static final SNAPSHOT:Ljava/lang/String; = "snapshot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
