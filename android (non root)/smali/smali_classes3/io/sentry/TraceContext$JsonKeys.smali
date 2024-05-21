.class public final Lio/sentry/TraceContext$JsonKeys;
.super Ljava/lang/Object;
.source "TraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "public_key"

.field public static final RELEASE:Ljava/lang/String; = "release"

.field public static final SAMPLED:Ljava/lang/String; = "sampled"

.field public static final SAMPLE_RATE:Ljava/lang/String; = "sample_rate"

.field public static final TRACE_ID:Ljava/lang/String; = "trace_id"

.field public static final TRANSACTION:Ljava/lang/String; = "transaction"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_SEGMENT:Ljava/lang/String; = "user_segment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
