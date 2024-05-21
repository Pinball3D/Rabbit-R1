.class Lcom/google/android/material/navigationrail/NavigationRailView$1;
.super Ljava/lang/Object;
.source "NavigationRailView.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigationrail/NavigationRailView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 207
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 208
    invoke-static {v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 211
    invoke-static {v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iget v2, v0, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 214
    invoke-static {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$300(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 215
    iget p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 216
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    goto :goto_0

    :cond_2
    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    :goto_0
    add-int/2addr p0, v0

    iput p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 218
    :cond_3
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method
