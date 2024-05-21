.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;->f$0:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-boolean p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;->f$0:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;->f$1:Z

    invoke-static {v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setDeviceMuted$28(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
