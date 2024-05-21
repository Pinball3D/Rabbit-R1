.class public final synthetic Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda5;->f$0:Landroidx/navigation/NavController;

    iput-boolean p2, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda5;->f$0:Landroidx/navigation/NavController;

    iget-boolean p0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0, p1}, Landroidx/navigation/ui/NavigationUI;->$r8$lambda$sbvqyPolB3oScI2X65WBFg39n0s(Landroidx/navigation/NavController;ZLandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
