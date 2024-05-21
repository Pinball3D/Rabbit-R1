.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$0:J

    iput-wide p3, p0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$1:J

    iput p5, p0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$0:J

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$1:J

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$2:F

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->lambda$getExtrapolating$1(JJF)J

    move-result-wide v0

    return-wide v0
.end method
