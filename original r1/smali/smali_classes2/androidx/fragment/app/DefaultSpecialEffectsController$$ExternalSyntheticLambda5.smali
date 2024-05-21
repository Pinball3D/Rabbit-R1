.class public final synthetic Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/animation/Animator;

.field public final synthetic f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;->f$0:Landroid/animation/Animator;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;->f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;->f$0:Landroid/animation/Animator;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;->f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-static {v0, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->$r8$lambda$nBPnIVzE-IIkFDPl66EJ4I_Fbz0(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    return-void
.end method
