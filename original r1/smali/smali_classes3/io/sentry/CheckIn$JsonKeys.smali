.class public final Lio/sentry/CheckIn$JsonKeys;
.super Ljava/lang/Object;
.source "CheckIn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/CheckIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final CHECK_IN_ID:Ljava/lang/String; = "check_in_id"

.field public static final CONTEXTS:Ljava/lang/String; = "contexts"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final MONITOR_CONFIG:Ljava/lang/String; = "monitor_config"

.field public static final MONITOR_SLUG:Ljava/lang/String; = "monitor_slug"

.field public static final RELEASE:Ljava/lang/String; = "release"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
