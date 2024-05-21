.class public final Lio/sentry/protocol/SentryException$JsonKeys;
.super Ljava/lang/Object;
.source "SentryException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final MECHANISM:Ljava/lang/String; = "mechanism"

.field public static final MODULE:Ljava/lang/String; = "module"

.field public static final STACKTRACE:Ljava/lang/String; = "stacktrace"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
