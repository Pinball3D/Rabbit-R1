.class public final Lio/sentry/protocol/SentryTransaction$JsonKeys;
.super Ljava/lang/Object;
.source "SentryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final MEASUREMENTS:Ljava/lang/String; = "measurements"

.field public static final METRICS_SUMMARY:Ljava/lang/String; = "_metrics_summary"

.field public static final SPANS:Ljava/lang/String; = "spans"

.field public static final START_TIMESTAMP:Ljava/lang/String; = "start_timestamp"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRANSACTION:Ljava/lang/String; = "transaction"

.field public static final TRANSACTION_INFO:Ljava/lang/String; = "transaction_info"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
