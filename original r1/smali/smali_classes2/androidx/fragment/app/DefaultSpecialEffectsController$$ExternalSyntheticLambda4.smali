.class public final synthetic Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

.field public final synthetic f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;->f$0:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;->f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;->f$0:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;->f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-static {v0, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->$r8$lambda$-BPUgvtrXJop0NyBRYNNBI4cvGs(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    return-void
.end method
