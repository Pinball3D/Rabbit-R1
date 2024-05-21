.class public final Lio/sentry/SentryBaseEvent$JsonKeys;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final BREADCRUMBS:Ljava/lang/String; = "breadcrumbs"

.field public static final CONTEXTS:Ljava/lang/String; = "contexts"

.field public static final DEBUG_META:Ljava/lang/String; = "debug_meta"

.field public static final DIST:Ljava/lang/String; = "dist"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final RELEASE:Ljava/lang/String; = "release"

.field public static final REQUEST:Ljava/lang/String; = "request"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SERVER_NAME:Ljava/lang/String; = "server_name"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
