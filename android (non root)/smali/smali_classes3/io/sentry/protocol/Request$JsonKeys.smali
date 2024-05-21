.class public final Lio/sentry/protocol/Request$JsonKeys;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final API_TARGET:Ljava/lang/String; = "api_target"

.field public static final BODY_SIZE:Ljava/lang/String; = "body_size"

.field public static final COOKIES:Ljava/lang/String; = "cookies"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final ENV:Ljava/lang/String; = "env"

.field public static final FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final HEADERS:Ljava/lang/String; = "headers"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final QUERY_STRING:Ljava/lang/String; = "query_string"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
