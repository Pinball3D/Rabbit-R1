.class Lcom/google/android/material/chip/ChipGroup$1;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedStateChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 165
    invoke-static {p1}, Lcom/google/android/material/chip/ChipGroup;->access$100(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 166
    invoke-static {p1}, Lcom/google/android/material/chip/ChipGroup;->access$100(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 168
    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$200(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/CheckableGroup;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v1, p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    .line 166
    invoke-interface {p1, v0, p0}, Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V

    :cond_0
    return-void
.end method
