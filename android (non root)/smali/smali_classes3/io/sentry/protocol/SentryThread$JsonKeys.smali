.class public final Lio/sentry/protocol/SentryThread$JsonKeys;
.super Ljava/lang/Object;
.source "SentryThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final CRASHED:Ljava/lang/String; = "crashed"

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DAEMON:Ljava/lang/String; = "daemon"

.field public static final HELD_LOCKS:Ljava/lang/String; = "held_locks"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MAIN:Ljava/lang/String; = "main"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final STACKTRACE:Ljava/lang/String; = "stacktrace"

.field public static final STATE:Ljava/lang/String; = "state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
