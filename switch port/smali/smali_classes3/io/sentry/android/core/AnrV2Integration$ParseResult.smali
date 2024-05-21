.class final Lio/sentry/android/core/AnrV2Integration$ParseResult;
.super Ljava/lang/Object;
.source "AnrV2Integration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    }
.end annotation


# instance fields
.field final dump:[B

.field final threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation
.end field

.field final type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;


# direct methods
.method constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;",
            "[B",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    iput-object p3, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    return-void
.end method
