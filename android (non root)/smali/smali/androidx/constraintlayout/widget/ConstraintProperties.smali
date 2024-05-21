.class public Landroidx/constraintlayout/widget/ConstraintProperties;
.super Ljava/lang/Object;
.source "ConstraintProperties.java"


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final END:I = 0x7

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1035
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 1036
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    return-void

    .line 1039
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only children of ConstraintLayout.LayoutParams supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p0, "undefined"

    return-object p0

    :pswitch_0
    const-string p0, "end"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "start"

    return-object p0

    :pswitch_2
    const-string p0, "baseline"

    return-object p0

    :pswitch_3
    const-string p0, "bottom"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "top"

    return-object p0

    :pswitch_5
    const-string p0, "right"

    return-object p0

    :pswitch_6
    const-string p0, "left"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    .line 739
    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 740
    :goto_1
    invoke-virtual {p0, v0, p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 743
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v2, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 748
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {p2, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 749
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v1, p1, v0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_3
    return-object p0
.end method

.method public addToHorizontalChainRTL(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    const/4 v0, 0x7

    const/4 v1, 0x6

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    .line 762
    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 763
    :goto_1
    invoke-virtual {p0, v0, p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 766
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v2, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 771
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {p2, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v1, p1, v0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_3
    return-object p0
.end method

.method public addToVerticalChain(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    .line 785
    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 786
    :goto_1
    invoke-virtual {p0, v0, p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 788
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 789
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v2, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 794
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {p2, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v1, p1, v0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_3
    return-object p0
.end method

.method public alpha(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 421
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p0
.end method

.method public apply()V
    .locals 0

    return-void
.end method

.method public center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 2

    const-string v0, "margin must be > 0"

    if-ltz p3, :cond_6

    if-ltz p6, :cond_5

    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 136
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 p1, 0x4

    .line 137
    invoke-virtual {p0, p1, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 138
    iput p7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    goto :goto_2

    .line 131
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 132
    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 134
    iput p7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto :goto_2

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 127
    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 129
    iput p7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    :goto_2
    return-object p0

    .line 122
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bias must be between 0 and 1 inclusive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public centerHorizontally(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    .line 209
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 211
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_0
    return-object p0
.end method

.method public centerHorizontally(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 p1, 0x2

    .line 158
    invoke-virtual {p0, p1, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 159
    iput p7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public centerHorizontallyRtl(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    .line 224
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 226
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_0
    return-object p0
.end method

.method public centerHorizontallyRtl(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, 0x6

    .line 176
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 p1, 0x7

    .line 177
    invoke-virtual {p0, p1, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 178
    iput p7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public centerVertically(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    .line 239
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 241
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_0
    return-object p0
.end method

.method public centerVertically(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, 0x3

    .line 195
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 p1, 0x4

    .line 196
    invoke-virtual {p0, p1, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 197
    iput p7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    return-object p0
.end method

.method public connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p1, :pswitch_data_0

    .line 1007
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " to "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " unknown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    if-ne p3, v1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 992
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 993
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_0

    :cond_0
    if-ne p3, v2, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 995
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 996
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1002
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto/16 :goto_6

    .line 998
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-ne p3, v2, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 978
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 979
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_1

    :cond_2
    if-ne p3, v1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 981
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 982
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 987
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_6

    .line 984
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p1, 0x5

    if-ne p3, p1, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 967
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 968
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 969
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 970
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 971
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_6

    .line 973
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-ne p3, v3, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 951
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 952
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 953
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_2

    :cond_5
    if-ne p3, v4, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 956
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 957
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 958
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    :goto_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 963
    iput p4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_6

    .line 961
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-ne p3, v4, :cond_7

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 936
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 937
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 938
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_3

    :cond_7
    if-ne p3, v3, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 940
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 941
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 942
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    :goto_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 947
    iput p4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 945
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne p3, v5, :cond_9

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 922
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 923
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    goto :goto_4

    :cond_9
    if-ne p3, v0, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 926
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 927
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    :goto_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 932
    iput p4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_6

    .line 930
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne p3, v5, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 909
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 910
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_5

    :cond_b
    if-ne p3, v0, :cond_c

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 912
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 913
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    :goto_5
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 918
    iput p4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    :goto_6
    return-object p0

    .line 916
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Left to "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constrainDefaultHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 653
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    return-object p0
.end method

.method public constrainDefaultWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 665
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    return-object p0
.end method

.method public constrainHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 582
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public constrainMaxHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 605
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    return-object p0
.end method

.method public constrainMaxWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 617
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    return-object p0
.end method

.method public constrainMinHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 629
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    return-object p0
.end method

.method public constrainMinWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 641
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    return-object p0
.end method

.method public constrainWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 593
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    return-object p0
.end method

.method public dimensionRatio(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 399
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    return-object p0
.end method

.method public elevation(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 433
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-object p0
.end method

.method public goneMargin(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 364
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 361
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 358
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto :goto_0

    .line 356
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseline does not support margins"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 353
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 350
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 347
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 344
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public horizontalBias(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 376
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public horizontalChainStyle(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 708
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    return-object p0
.end method

.method public horizontalWeight(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 677
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    return-object p0
.end method

.method public margin(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 329
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 326
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 323
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 321
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseline does not support margins"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 318
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 315
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 312
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 309
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    .line 294
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 288
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 289
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 290
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 291
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 282
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 283
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 284
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 285
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 279
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 273
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 274
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 275
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 276
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 267
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 268
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 269
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 270
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 261
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 262
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 263
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 264
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 255
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 256
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 257
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 258
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeFromHorizontalChain()Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 843
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 844
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    if-eq v1, v4, :cond_0

    goto :goto_1

    .line 868
    :cond_0
    iget v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 869
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-ne v1, v4, :cond_1

    if-eq v2, v4, :cond_5

    :cond_1
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 871
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 872
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v8, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 873
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v9, v7

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 874
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v9, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v1, v4, :cond_2

    if-eq v2, v4, :cond_2

    .line 878
    invoke-virtual {v8, v5, v2, v6, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 879
    invoke-virtual {v9, v6, v0, v5, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    if-eq v2, v4, :cond_5

    .line 881
    :cond_3
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_4

    .line 883
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v8, v5, v0, v5, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    .line 884
    :cond_4
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_5

    .line 886
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v9, v6, v0, v6, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 890
    :cond_5
    :goto_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 891
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 847
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 848
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v5, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 849
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 850
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v6, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v0, v4, :cond_7

    if-eq v1, v4, :cond_7

    .line 853
    invoke-virtual {v5, v8, v1, v7, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 854
    invoke-virtual {v6, v7, v0, v8, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_2

    :cond_7
    if-ne v0, v4, :cond_8

    if-eq v1, v4, :cond_a

    .line 856
    :cond_8
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_9

    .line 858
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v5, v8, v0, v8, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_2

    .line 859
    :cond_9
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_a

    .line 861
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v6, v7, v0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 864
    :cond_a
    :goto_2
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 865
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_3
    return-object p0
.end method

.method public removeFromVerticalChain()Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 808
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 809
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    if-eq v1, v4, :cond_4

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 811
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 812
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v6, v5}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 813
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 814
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v7, v5}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v8, 0x0

    if-eq v0, v4, :cond_1

    if-eq v1, v4, :cond_1

    .line 817
    invoke-virtual {v6, v2, v1, v3, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 818
    invoke-virtual {v7, v3, v0, v2, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    if-eq v1, v4, :cond_4

    .line 820
    :cond_2
    iget v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_3

    .line 822
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v6, v2, v0, v2, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    .line 823
    :cond_3
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v4, :cond_4

    .line 825
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v7, v3, v0, v3, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 830
    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 831
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    return-object p0
.end method

.method public rotation(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 445
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-object p0
.end method

.method public rotationX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 456
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    return-object p0
.end method

.method public rotationY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 467
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    return-object p0
.end method

.method public scaleX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 478
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-object p0
.end method

.method public scaleY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 0

    return-object p0
.end method

.method public transformPivot(FF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 522
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 523
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    return-object p0
.end method

.method public transformPivotX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 499
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    return-object p0
.end method

.method public transformPivotY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 510
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    return-object p0
.end method

.method public translation(FF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 557
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 558
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-object p0
.end method

.method public translationX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 534
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-object p0
.end method

.method public translationY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 545
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-object p0
.end method

.method public translationZ(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 570
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-object p0
.end method

.method public verticalBias(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 387
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    return-object p0
.end method

.method public verticalChainStyle(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 727
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    return-object p0
.end method

.method public verticalWeight(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 689
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    return-object p0
.end method

.method public visibility(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 410
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
