.class public final Lio/sentry/HttpStatusCodeRange;
.super Ljava/lang/Object;
.source "HttpStatusCodeRange.java"


# static fields
.field public static final DEFAULT_MAX:I = 0x257

.field public static final DEFAULT_MIN:I = 0x1f4


# instance fields
.field private final max:I

.field private final min:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/sentry/HttpStatusCodeRange;->min:I

    iput p1, p0, Lio/sentry/HttpStatusCodeRange;->max:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/sentry/HttpStatusCodeRange;->min:I

    iput p2, p0, Lio/sentry/HttpStatusCodeRange;->max:I

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1

    iget v0, p0, Lio/sentry/HttpStatusCodeRange;->min:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lio/sentry/HttpStatusCodeRange;->max:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
