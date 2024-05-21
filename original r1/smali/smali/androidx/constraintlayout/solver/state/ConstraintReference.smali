.class public Landroidx/constraintlayout/solver/state/ConstraintReference;
.super Ljava/lang/Object;
.source "ConstraintReference.java"

# interfaces
.implements Landroidx/constraintlayout/solver/state/Reference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/ConstraintReference$IncorrectConstraintException;,
        Landroidx/constraintlayout/solver/state/ConstraintReference$ConstraintReferenceFactory;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;

.field mBaselineToBaseline:Ljava/lang/Object;

.field mBottomToBottom:Ljava/lang/Object;

.field mBottomToTop:Ljava/lang/Object;

.field private mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mEndToEnd:Ljava/lang/Object;

.field mEndToStart:Ljava/lang/Object;

.field mHorizontalBias:F

.field mHorizontalChainStyle:I

.field mHorizontalDimension:Landroidx/constraintlayout/solver/state/Dimension;

.field mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

.field mLeftToLeft:Ljava/lang/Object;

.field mLeftToRight:Ljava/lang/Object;

.field mMarginBottom:I

.field mMarginBottomGone:I

.field mMarginEnd:I

.field mMarginEndGone:I

.field mMarginLeft:I

.field mMarginLeftGone:I

.field mMarginRight:I

.field mMarginRightGone:I

.field mMarginStart:I

.field mMarginStartGone:I

.field mMarginTop:I

.field mMarginTopGone:I

.field mRightToLeft:Ljava/lang/Object;

.field mRightToRight:Ljava/lang/Object;

.field mStartToEnd:Ljava/lang/Object;

.field mStartToStart:Ljava/lang/Object;

.field final mState:Landroidx/constraintlayout/solver/state/State;

.field mTopToBottom:Ljava/lang/Object;

.field mTopToTop:Ljava/lang/Object;

.field mVerticalBias:F

.field mVerticalChainStyle:I

.field mVerticalDimension:Landroidx/constraintlayout/solver/state/Dimension;

.field private mView:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalChainStyle:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalBias:F

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 81
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/constraintlayout/solver/state/Dimension;->Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    .line 82
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/constraintlayout/solver/state/Dimension;->Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mState:Landroidx/constraintlayout/solver/state/State;

    return-void
.end method

.method private applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V
    .locals 6

    .line 620
    invoke-direct {p0, p2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getTarget(Ljava/lang/Object;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 624
    :cond_0
    sget-object p2, Landroidx/constraintlayout/solver/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Constraint:[I

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/state/State$Constraint;->ordinal()I

    move-result v0

    aget p2, p2, v0

    .line 627
    sget-object p2, Landroidx/constraintlayout/solver/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Constraint:[I

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/state/State$Constraint;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 677
    :pswitch_0
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_0

    .line 673
    :pswitch_1
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_0

    .line 669
    :pswitch_2
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_0

    .line 665
    :pswitch_3
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_0

    .line 661
    :pswitch_4
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_0

    .line 641
    :pswitch_5
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_0

    .line 637
    :pswitch_6
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_0

    .line 633
    :pswitch_7
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_0

    .line 629
    :pswitch_8
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_0

    .line 657
    :pswitch_9
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_0

    .line 653
    :pswitch_a
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_0

    .line 649
    :pswitch_b
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_0

    .line 645
    :pswitch_c
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dereference()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 266
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 267
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 268
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 269
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 270
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 271
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 272
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 273
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 274
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 275
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 276
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 277
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 278
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    return-void
.end method

.method private get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mState:Landroidx/constraintlayout/solver/state/State;

    .line 168
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->reference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Reference;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private getTarget(Ljava/lang/Object;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 0

    .line 612
    instance-of p0, p1, Landroidx/constraintlayout/solver/state/Reference;

    if-eqz p0, :cond_0

    .line 613
    check-cast p1, Landroidx/constraintlayout/solver/state/Reference;

    .line 614
    invoke-interface {p1}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public apply()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mState:Landroidx/constraintlayout/solver/state/State;

    const/4 v3, 0x0

    .line 686
    invoke-virtual {v1, v2, v0, v3}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mState:Landroidx/constraintlayout/solver/state/State;

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    .line 687
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 688
    invoke-direct {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->dereference()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 690
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 691
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 692
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 693
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 694
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 695
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 696
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 697
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 698
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 699
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 700
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 701
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 702
    sget-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Constraint;)V

    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 705
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalChainStyle:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 708
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalBias:F

    .line 711
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalBias:F

    .line 712
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    return-void
.end method

.method public baseline()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 261
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object p0
.end method

.method public baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 354
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    return-object p0
.end method

.method public bias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    if-nez v0, :cond_0

    return-object p0

    .line 500
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Constraint:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalBias:F

    goto :goto_0

    :pswitch_2
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalBias:F

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bottom()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    goto :goto_0

    .line 255
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    :goto_0
    return-object p0
.end method

.method public bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 348
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    return-object p0
.end method

.method public bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 342
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    return-object p0
.end method

.method public centerHorizontally(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 363
    sget-object p1, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalBias:F

    return-object p0
.end method

.method public centerVertically(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 372
    sget-object p1, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalBias:F

    return-object p0
.end method

.method public clear()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Landroidx/constraintlayout/solver/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Constraint:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/state/State$Constraint;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    goto :goto_0

    :pswitch_2
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    goto :goto_0

    :pswitch_3
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    goto :goto_0

    :pswitch_4
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    goto :goto_0

    :pswitch_5
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    goto :goto_0

    :pswitch_6
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    iput v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearHorizontal()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->start()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 200
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->end()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 201
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->left()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 202
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->right()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object p0
.end method

.method public clearVertical()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->top()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 193
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->baseline()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 194
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottom()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clear()Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object p0
.end method

.method public createConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .line 116
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 117
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/Dimension;->getValue()I

    move-result v1

    .line 118
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/Dimension;->getValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(II)V

    return-object v0
.end method

.method public end()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    :goto_0
    return-object p0
.end method

.method public endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 324
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    return-object p0
.end method

.method public endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 318
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    return-object p0
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->createConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    .line 110
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p0
.end method

.method public getHeight()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    return-object p0
.end method

.method public getHorizontalChainStyle()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getVerticalChainStyle(I)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalChainStyle:I

    return p0
.end method

.method public getView()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    return-object p0
.end method

.method public getWidth()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    return-object p0
.end method

.method public height(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method

.method public horizontalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalBias:F

    return-object p0
.end method

.method public left()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    :goto_0
    return-object p0
.end method

.method public leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 282
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    return-object p0
.end method

.method public leftToRight(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 288
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    return-object p0
.end method

.method public margin(I)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Landroidx/constraintlayout/solver/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Constraint:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    goto :goto_0

    :pswitch_1
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    goto :goto_0

    :pswitch_2
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    goto :goto_0

    :pswitch_3
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    goto :goto_0

    :pswitch_4
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    goto :goto_0

    :pswitch_5
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeft:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRight:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStart:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEnd:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTop:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottom:I

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mState:Landroidx/constraintlayout/solver/state/State;

    .line 399
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method

.method public marginGone(I)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Landroidx/constraintlayout/solver/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Constraint:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    goto :goto_0

    :pswitch_1
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    goto :goto_0

    :pswitch_2
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    goto :goto_0

    :pswitch_3
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    goto :goto_0

    :pswitch_4
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    goto :goto_0

    :pswitch_5
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginLeftGone:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginRightGone:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginStartGone:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginEndGone:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginTopGone:I

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mMarginBottomGone:I

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public right()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    goto :goto_0

    .line 219
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    :goto_0
    return-object p0
.end method

.method public rightToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 294
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    return-object p0
.end method

.method public rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 300
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    return-object p0
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    .line 103
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    return-void
.end method

.method public setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    return-object p0
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->key:Ljava/lang/Object;

    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalChainStyle:I

    return-void
.end method

.method public setView(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/solver/state/Dimension;

    return-object p0
.end method

.method public start()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    goto :goto_0

    .line 228
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    :goto_0
    return-object p0
.end method

.method public startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 312
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    return-object p0
.end method

.method public startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 306
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    return-object p0
.end method

.method public top()Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    goto :goto_0

    .line 246
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    :goto_0
    return-object p0
.end method

.method public topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 336
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    return-object p0
.end method

.method public topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    .line 330
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLast:Landroidx/constraintlayout/solver/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    return-object p0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/solver/state/ConstraintReference$IncorrectConstraintException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, "LeftToLeft and LeftToRight both defined"

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, "RightToLeft and RightToRight both defined"

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v1, "StartToStart and StartToEnd both defined"

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string v1, "EndToStart and EndToEnd both defined"

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "Both left/right and start/end constraints defined"

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_7

    return-void

    .line 159
    :cond_7
    new-instance v1, Landroidx/constraintlayout/solver/state/ConstraintReference$IncorrectConstraintException;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/solver/state/ConstraintReference$IncorrectConstraintException;-><init>(Landroidx/constraintlayout/solver/state/ConstraintReference;Ljava/util/ArrayList;)V

    throw v1
.end method

.method public verticalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/state/ConstraintReference;->mVerticalBias:F

    return-object p0
.end method

.method public width(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method
