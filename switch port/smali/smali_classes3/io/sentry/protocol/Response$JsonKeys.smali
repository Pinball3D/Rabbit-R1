.class public final Lio/sentry/protocol/Response$JsonKeys;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final BODY_SIZE:Ljava/lang/String; = "body_size"

.field public static final COOKIES:Ljava/lang/String; = "cookies"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final HEADERS:Ljava/lang/String; = "headers"

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
