.class public final synthetic Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/collection/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$3:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$1:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-boolean v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$2:Z

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;->f$3:Landroidx/collection/ArrayMap;

    invoke-static {v0, v1, v2, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->$r8$lambda$80uanJcSks_q3pUzXhnQHPkjlsU(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    return-void
.end method
