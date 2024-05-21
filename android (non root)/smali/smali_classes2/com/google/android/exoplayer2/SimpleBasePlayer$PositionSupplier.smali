.class public interface abstract Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PositionSupplier"
.end annotation


# static fields
.field public static final ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1925
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-void
.end method

.method public static getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .locals 1

    .line 1933
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;-><init>(J)V

    return-object v0
.end method

.method public static getExtrapolating(JF)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .locals 7

    .line 1943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1944
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-wide v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;-><init>(JJF)V

    return-object v6
.end method

.method public static synthetic lambda$getConstant$0(J)J
    .locals 0

    return-wide p0
.end method

.method public static synthetic lambda$getExtrapolating$1(JJF)J
    .locals 2

    .line 1945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-float p2, v0

    mul-float/2addr p2, p4

    float-to-long p2, p2

    add-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public abstract get()J
.end method
