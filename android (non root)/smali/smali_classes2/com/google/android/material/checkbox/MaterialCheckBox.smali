.class public Lcom/google/android/material/checkbox/MaterialCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "MaterialCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$CheckedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_STATES:[[I

.field private static final DEF_STYLE_RES:I

.field private static final ERROR_STATE_SET:[I

.field private static final FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

.field private static final INDETERMINATE_STATE_SET:[I

.field public static final STATE_CHECKED:I = 0x1

.field public static final STATE_INDETERMINATE:I = 0x2

.field public static final STATE_UNCHECKED:I


# instance fields
.field private broadcasting:Z

.field private buttonDrawable:Landroid/graphics/drawable/Drawable;

.field private buttonIconDrawable:Landroid/graphics/drawable/Drawable;

.field buttonIconTintList:Landroid/content/res/ColorStateList;

.field private buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field buttonTintList:Landroid/content/res/ColorStateList;

.field private centerIfNoTextEnabled:Z

.field private checkedState:I

.field private currentStateChecked:[I

.field private customStateDescription:Ljava/lang/CharSequence;

.field private errorAccessibilityLabel:Ljava/lang/CharSequence;

.field private errorShown:Z

.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onErrorChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field private final transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private useMaterialThemeColors:Z

.field private usingMaterialButtonDrawable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 88
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    .line 126
    sget v0, Lcom/google/android/material/R$attr;->state_indeterminate:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->INDETERMINATE_STATE_SET:[I

    .line 127
    sget v0, Lcom/google/android/material/R$attr;->state_error:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    .line 128
    sget v1, Lcom/google/android/material/R$attr;->state_error:I

    const v2, 0x101009e

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const v1, 0x10100a0

    filled-new-array {v2, v1}, [I

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const v3, -0x10100a0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const v2, -0x101009e

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    const-string v3, "btn_check_material_anim"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 232
    sget v0, Lcom/google/android/material/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    sget v4, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    .line 236
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 143
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button_checked_unchecked:I

    .line 170
    invoke-static {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 172
    new-instance p1, Lcom/google/android/material/checkbox/MaterialCheckBox$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/checkbox/MaterialCheckBox$1;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 240
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getSuperButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    .line 243
    invoke-interface {p0, v6}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 245
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox:[I

    const/4 v7, 0x0

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 246
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 249
    sget p3, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 252
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isMaterial3Theme(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 253
    invoke-direct {p0, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isButtonDrawableLegacy(Landroidx/appcompat/widget/TintTypedArray;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 254
    invoke-super {p0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    sget p3, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button:I

    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    iget-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    .line 258
    sget p3, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button_icon:I

    .line 259
    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIconTint:I

    .line 263
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    .line 265
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIconTintMode:I

    const/4 p3, -0x1

    .line 267
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 266
    invoke-static {p1, p3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 268
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_useMaterialThemeColors:I

    .line 269
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    .line 270
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_centerIfNoTextEnabled:I

    .line 271
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    .line 272
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorShown:I

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 273
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorAccessibilityLabel:I

    .line 274
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    .line 275
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_checkedState:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 276
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_checkedState:I

    .line 277
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    .line 280
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 282
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/checkbox/MaterialCheckBox;)[I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    return-object p0
.end method

.method private getButtonStateDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_checked:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 823
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_unchecked:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_indeterminate:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    .line 854
    array-length v1, v0

    new-array v1, v1, [I

    .line 855
    sget v2, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    .line 856
    sget v3, Lcom/google/android/material/R$attr;->colorError:I

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v3

    .line 857
    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    .line 858
    sget v5, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 861
    invoke-static {v4, v3, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    aput v3, v1, v6

    const/4 v3, 0x1

    .line 863
    invoke-static {v4, v2, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    aput v2, v1, v3

    const v2, 0x3f0a3d71    # 0.54f

    .line 865
    invoke-static {v4, v5, v2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    const v3, 0x3ec28f5c    # 0.38f

    .line 867
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v1, v2

    const/4 v2, 0x4

    .line 869
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    aput v3, v1, v2

    .line 871
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private getSuperButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    return-object v0

    .line 834
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 835
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 837
    :cond_1
    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private isButtonDrawableLegacy(Landroidx/appcompat/widget/TintTypedArray;)Z
    .locals 2

    .line 841
    sget p0, Lcom/google/android/material/R$styleable;->MaterialCheckBox_android_button:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p0

    .line 842
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonCompat:I

    .line 843
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    sget v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

    if-ne p0, v1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshButtonDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    .line 735
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 734
    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 737
    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 740
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUpDefaultButtonDrawableAnimationIfNeeded()V

    .line 741
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateButtonTints()V

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 744
    invoke-static {v0, v1}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 743
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    return-void
.end method

.method private setDefaultStateDescription()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->customStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getButtonStateDescription()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setUpDefaultButtonDrawableAnimationIfNeeded()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 759
    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 760
    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 766
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_2

    .line 769
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    sget v1, Lcom/google/android/material/R$id;->checked:I

    sget v2, Lcom/google/android/material/R$id;->unchecked:I

    iget-object v3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    const/4 v4, 0x0

    .line 770
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 772
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    sget v1, Lcom/google/android/material/R$id;->indeterminate:I

    sget v2, Lcom/google/android/material/R$id;->unchecked:I

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 773
    invoke-virtual {v0, v1, v2, p0, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    :cond_2
    return-void
.end method

.method private updateButtonTints()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 780
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_1

    .line 784
    invoke-static {v0, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private updateIconTintIfNeeded()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addOnCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 447
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnErrorChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 543
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnCheckedStateChangedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 462
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public clearOnErrorChangedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 558
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getButtonIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCheckedState()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    return p0
.end method

.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isCenterIfNoTextEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    return p0
.end method

.method public isChecked()Z
    .locals 1

    iget p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isErrorShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    return p0
.end method

.method public isUseMaterialThemeColors()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    return p0
.end method

.method synthetic lambda$new$0$com-google-android-material-checkbox-MaterialCheckBox()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 286
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 319
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x2

    add-int/2addr p1, v0

    .line 328
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 330
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getCheckedState()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->INDETERMINATE_STATE_SET:[I

    .line 331
    invoke-static {p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->mergeDrawableStates([I[I)[I

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    .line 335
    invoke-static {p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->mergeDrawableStates([I[I)[I

    .line 338
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/drawable/DrawableUtils;->getCheckedState([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    .line 340
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateIconTintIfNeeded()V

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v1

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v3, v2

    const/4 v4, 0x0

    .line 300
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 307
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 306
    invoke-static {p0, v0, v1, v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void

    .line 314
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 373
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 889
    instance-of v0, p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    if-nez v0, :cond_0

    .line 890
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 893
    :cond_0
    check-cast p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    .line 894
    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 895
    iget p1, p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 879
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 881
    new-instance v1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 883
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getCheckedState()I

    move-result p0

    iput p0, v1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    return-object v1
.end method

.method public removeOnCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 457
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnErrorChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 553
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    .line 570
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method public setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 626
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method public setButtonIconDrawableResource(I)V
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    .line 656
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method public setButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 684
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    .line 585
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 596
    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 597
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 353
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    return-void
.end method

.method public setCheckedState(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 392
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    .line 394
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setDefaultStateDescription()V

    iget-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_2

    .line 403
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;

    iget v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    .line 404
    invoke-interface {v1, p0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;->onCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox;I)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 411
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 412
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_4

    .line 414
    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_4
    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    :cond_5
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 347
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 348
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateIconTintIfNeeded()V

    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorShown(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 483
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;

    iget-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 484
    invoke-interface {v0, p0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;->onErrorChanged(Lcom/google/android/material/checkbox/MaterialCheckBox;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->customStateDescription:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 806
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setDefaultStateDescription()V

    goto :goto_0

    .line 808
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz p1, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 707
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    return-void
.end method
