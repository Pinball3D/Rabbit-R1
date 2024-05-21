.class Landroidx/fragment/app/FragmentManager$ClearBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearBackStackState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$ClearBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 3559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$ClearBackStackState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$ClearBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$ClearBackStackState;->mName:Ljava/lang/String;

    .line 3566
    invoke-virtual {v0, p1, p2, p0}, Landroidx/fragment/app/FragmentManager;->clearBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
