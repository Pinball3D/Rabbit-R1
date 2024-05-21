.class public final synthetic Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController;

    iput-object p2, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/material/navigation/NavigationView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController;

    iget-object p0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0, p0, p1}, Landroidx/navigation/ui/NavigationUI;->$r8$lambda$Pw-T7uPlYIDB9g5xe-VU8IS_KuI(Landroidx/navigation/NavController;Lcom/google/android/material/navigation/NavigationView;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
