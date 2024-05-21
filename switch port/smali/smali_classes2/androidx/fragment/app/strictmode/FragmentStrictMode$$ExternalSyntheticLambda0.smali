.class public final synthetic Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

.field public final synthetic f$1:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;->f$1:Landroidx/fragment/app/strictmode/Violation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    iget-object p0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;->f$1:Landroidx/fragment/app/strictmode/Violation;

    invoke-static {v0, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->$r8$lambda$Mtbe_LzH2gmlbO4HjSBPPMQgPXw(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    return-void
.end method
