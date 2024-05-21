.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;->f$0:Landroidx/media3/common/SimpleBasePlayer$State;

    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;->f$1:I

    iput-wide p3, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;->f$2:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;->f$0:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;->f$1:I

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->lambda$seekTo$10(Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
