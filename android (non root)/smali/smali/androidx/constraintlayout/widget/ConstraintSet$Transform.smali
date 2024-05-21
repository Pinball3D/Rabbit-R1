.class public Landroidx/constraintlayout/widget/ConstraintSet$Transform;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transform"
.end annotation


# static fields
.field private static final ELEVATION:I = 0xb

.field private static final ROTATION:I = 0x1

.field private static final ROTATION_X:I = 0x2

.field private static final ROTATION_Y:I = 0x3

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x5

.field private static final TRANSFORM_PIVOT_X:I = 0x6

.field private static final TRANSFORM_PIVOT_Y:I = 0x7

.field private static final TRANSLATION_X:I = 0x8

.field private static final TRANSLATION_Y:I = 0x9

.field private static final TRANSLATION_Z:I = 0xa

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public applyElevation:Z

.field public elevation:F

.field public mApply:Z

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1057
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1071
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_rotation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1072
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_rotationX:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1073
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_rotationY:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1074
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_scaleX:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1075
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_scaleY:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1076
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_transformPivotX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1077
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_transformPivotY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1078
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_translationX:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1079
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_translationY:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1080
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_translationZ:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1081
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_elevation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    return-void
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Transform;)V
    .locals 1

    .line 1042
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 1043
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 1044
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 1045
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 1046
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 1047
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 1048
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 1049
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 1050
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 1051
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 1052
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 1053
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 1054
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    return-void
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1085
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Transform:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 1087
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1089
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1091
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 1127
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    goto :goto_1

    :pswitch_1
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 1121
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    goto :goto_1

    :pswitch_2
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 1117
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    goto :goto_1

    :pswitch_3
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 1114
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    goto :goto_1

    :pswitch_4
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 1111
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    goto :goto_1

    :pswitch_5
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 1108
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    goto :goto_1

    :pswitch_6
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 1105
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    goto :goto_1

    :pswitch_7
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 1102
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    goto :goto_1

    :pswitch_8
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 1099
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    goto :goto_1

    :pswitch_9
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 1096
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    goto :goto_1

    :pswitch_a
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 1093
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
