.class public final Lio/sentry/Baggage$DSCKeys;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Baggage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DSCKeys"
.end annotation


# static fields
.field public static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENVIRONMENT:Ljava/lang/String; = "sentry-environment"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "sentry-public_key"

.field public static final RELEASE:Ljava/lang/String; = "sentry-release"

.field public static final SAMPLED:Ljava/lang/String; = "sentry-sampled"

.field public static final SAMPLE_RATE:Ljava/lang/String; = "sentry-sample_rate"

.field public static final TRACE_ID:Ljava/lang/String; = "sentry-trace_id"

.field public static final TRANSACTION:Ljava/lang/String; = "sentry-transaction"

.field public static final USER_ID:Ljava/lang/String; = "sentry-user_id"

.field public static final USER_SEGMENT:Ljava/lang/String; = "sentry-user_segment"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "sentry-trace_id"

    const-string v1, "sentry-public_key"

    const-string v2, "sentry-release"

    const-string v3, "sentry-user_id"

    const-string v4, "sentry-environment"

    const-string v5, "sentry-user_segment"

    const-string v6, "sentry-transaction"

    const-string v7, "sentry-sample_rate"

    const-string v8, "sentry-sampled"

    .line 504
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/Baggage$DSCKeys;->ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
