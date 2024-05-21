.class final Lcom/google/common/util/concurrent/OverflowAvoidingLockSupport;
.super Ljava/lang/Object;
.source "OverflowAvoidingLockSupport.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final MAX_NANOSECONDS_THRESHOLD:J = 0x1dcd64ffffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parkNanos(Ljava/lang/Object;J)V
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const-wide v0, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 36
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    return-void
.end method
