package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.material.R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class BadgeState {
    private static final String BADGE_RESOURCE_TAG = "badge";
    final float badgeHeight;
    final float badgeRadius;
    final float badgeWidth;
    final float badgeWithTextHeight;
    final float badgeWithTextRadius;
    final float badgeWithTextWidth;
    private final State currentState;
    final int horizontalInset;
    final int horizontalInsetWithText;
    int offsetAlignmentMode;
    private final State overridingState;

    /* JADX INFO: Access modifiers changed from: package-private */
    public State getOverridingState() {
        return this.overridingState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BadgeState(Context context, int i, int i2, int i3, State state) {
        CharSequence charSequence;
        int i4;
        int i5;
        int i6;
        int i7;
        int intValue;
        int intValue2;
        int intValue3;
        int intValue4;
        int intValue5;
        int intValue6;
        int intValue7;
        int intValue8;
        int intValue9;
        int intValue10;
        int intValue11;
        int intValue12;
        int intValue13;
        int intValue14;
        boolean booleanValue;
        State state2 = new State();
        this.currentState = state2;
        state = state == null ? new State() : state;
        if (i != 0) {
            state.badgeResId = i;
        }
        TypedArray generateTypedArray = generateTypedArray(context, state.badgeResId, i2, i3);
        Resources resources = context.getResources();
        this.badgeRadius = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeRadius, -1);
        this.horizontalInset = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.horizontalInsetWithText = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.badgeWithTextRadius = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, -1);
        this.badgeWidth = generateTypedArray.getDimension(R.styleable.Badge_badgeWidth, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextWidth = generateTypedArray.getDimension(R.styleable.Badge_badgeWithTextWidth, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.badgeHeight = generateTypedArray.getDimension(R.styleable.Badge_badgeHeight, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextHeight = generateTypedArray.getDimension(R.styleable.Badge_badgeWithTextHeight, resources.getDimension(R.dimen.m3_badge_with_text_size));
        boolean z = true;
        this.offsetAlignmentMode = generateTypedArray.getInt(R.styleable.Badge_offsetAlignmentMode, 1);
        state2.alpha = state.alpha == -2 ? 255 : state.alpha;
        if (state.number == -2) {
            if (generateTypedArray.hasValue(R.styleable.Badge_number)) {
                state2.number = generateTypedArray.getInt(R.styleable.Badge_number, 0);
            } else {
                state2.number = -1;
            }
        } else {
            state2.number = state.number;
        }
        if (state.text == null) {
            if (generateTypedArray.hasValue(R.styleable.Badge_badgeText)) {
                state2.text = generateTypedArray.getString(R.styleable.Badge_badgeText);
            }
        } else {
            state2.text = state.text;
        }
        state2.contentDescriptionForText = state.contentDescriptionForText;
        if (state.contentDescriptionNumberless == null) {
            charSequence = context.getString(R.string.mtrl_badge_numberless_content_description);
        } else {
            charSequence = state.contentDescriptionNumberless;
        }
        state2.contentDescriptionNumberless = charSequence;
        if (state.contentDescriptionQuantityStrings == 0) {
            i4 = R.plurals.mtrl_badge_content_description;
        } else {
            i4 = state.contentDescriptionQuantityStrings;
        }
        state2.contentDescriptionQuantityStrings = i4;
        if (state.contentDescriptionExceedsMaxBadgeNumberRes == 0) {
            i5 = R.string.mtrl_exceed_max_badge_number_content_description;
        } else {
            i5 = state.contentDescriptionExceedsMaxBadgeNumberRes;
        }
        state2.contentDescriptionExceedsMaxBadgeNumberRes = i5;
        if (state.isVisible != null && !state.isVisible.booleanValue()) {
            z = false;
        }
        state2.isVisible = Boolean.valueOf(z);
        if (state.maxCharacterCount == -2) {
            i6 = generateTypedArray.getInt(R.styleable.Badge_maxCharacterCount, -2);
        } else {
            i6 = state.maxCharacterCount;
        }
        state2.maxCharacterCount = i6;
        if (state.maxNumber == -2) {
            i7 = generateTypedArray.getInt(R.styleable.Badge_maxNumber, -2);
        } else {
            i7 = state.maxNumber;
        }
        state2.maxNumber = i7;
        if (state.badgeShapeAppearanceResId == null) {
            intValue = generateTypedArray.getResourceId(R.styleable.Badge_badgeShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full);
        } else {
            intValue = state.badgeShapeAppearanceResId.intValue();
        }
        state2.badgeShapeAppearanceResId = Integer.valueOf(intValue);
        if (state.badgeShapeAppearanceOverlayResId == null) {
            intValue2 = generateTypedArray.getResourceId(R.styleable.Badge_badgeShapeAppearanceOverlay, 0);
        } else {
            intValue2 = state.badgeShapeAppearanceOverlayResId.intValue();
        }
        state2.badgeShapeAppearanceOverlayResId = Integer.valueOf(intValue2);
        if (state.badgeWithTextShapeAppearanceResId == null) {
            intValue3 = generateTypedArray.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full);
        } else {
            intValue3 = state.badgeWithTextShapeAppearanceResId.intValue();
        }
        state2.badgeWithTextShapeAppearanceResId = Integer.valueOf(intValue3);
        if (state.badgeWithTextShapeAppearanceOverlayResId == null) {
            intValue4 = generateTypedArray.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0);
        } else {
            intValue4 = state.badgeWithTextShapeAppearanceOverlayResId.intValue();
        }
        state2.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(intValue4);
        if (state.backgroundColor == null) {
            intValue5 = readColorFromAttributes(context, generateTypedArray, R.styleable.Badge_backgroundColor);
        } else {
            intValue5 = state.backgroundColor.intValue();
        }
        state2.backgroundColor = Integer.valueOf(intValue5);
        if (state.badgeTextAppearanceResId == null) {
            intValue6 = generateTypedArray.getResourceId(R.styleable.Badge_badgeTextAppearance, R.style.TextAppearance_MaterialComponents_Badge);
        } else {
            intValue6 = state.badgeTextAppearanceResId.intValue();
        }
        state2.badgeTextAppearanceResId = Integer.valueOf(intValue6);
        if (state.badgeTextColor == null) {
            if (generateTypedArray.hasValue(R.styleable.Badge_badgeTextColor)) {
                state2.badgeTextColor = Integer.valueOf(readColorFromAttributes(context, generateTypedArray, R.styleable.Badge_badgeTextColor));
            } else {
                state2.badgeTextColor = Integer.valueOf(new TextAppearance(context, state2.badgeTextAppearanceResId.intValue()).getTextColor().getDefaultColor());
            }
        } else {
            state2.badgeTextColor = state.badgeTextColor;
        }
        if (state.badgeGravity == null) {
            intValue7 = generateTypedArray.getInt(R.styleable.Badge_badgeGravity, 8388661);
        } else {
            intValue7 = state.badgeGravity.intValue();
        }
        state2.badgeGravity = Integer.valueOf(intValue7);
        if (state.badgeHorizontalPadding == null) {
            intValue8 = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        } else {
            intValue8 = state.badgeHorizontalPadding.intValue();
        }
        state2.badgeHorizontalPadding = Integer.valueOf(intValue8);
        if (state.badgeVerticalPadding == null) {
            intValue9 = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding));
        } else {
            intValue9 = state.badgeVerticalPadding.intValue();
        }
        state2.badgeVerticalPadding = Integer.valueOf(intValue9);
        if (state.horizontalOffsetWithoutText == null) {
            intValue10 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0);
        } else {
            intValue10 = state.horizontalOffsetWithoutText.intValue();
        }
        state2.horizontalOffsetWithoutText = Integer.valueOf(intValue10);
        if (state.verticalOffsetWithoutText == null) {
            intValue11 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0);
        } else {
            intValue11 = state.verticalOffsetWithoutText.intValue();
        }
        state2.verticalOffsetWithoutText = Integer.valueOf(intValue11);
        if (state.horizontalOffsetWithText == null) {
            intValue12 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, state2.horizontalOffsetWithoutText.intValue());
        } else {
            intValue12 = state.horizontalOffsetWithText.intValue();
        }
        state2.horizontalOffsetWithText = Integer.valueOf(intValue12);
        if (state.verticalOffsetWithText == null) {
            intValue13 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, state2.verticalOffsetWithoutText.intValue());
        } else {
            intValue13 = state.verticalOffsetWithText.intValue();
        }
        state2.verticalOffsetWithText = Integer.valueOf(intValue13);
        if (state.largeFontVerticalOffsetAdjustment == null) {
            intValue14 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_largeFontVerticalOffsetAdjustment, 0);
        } else {
            intValue14 = state.largeFontVerticalOffsetAdjustment.intValue();
        }
        state2.largeFontVerticalOffsetAdjustment = Integer.valueOf(intValue14);
        state2.additionalHorizontalOffset = Integer.valueOf(state.additionalHorizontalOffset == null ? 0 : state.additionalHorizontalOffset.intValue());
        state2.additionalVerticalOffset = Integer.valueOf(state.additionalVerticalOffset == null ? 0 : state.additionalVerticalOffset.intValue());
        if (state.autoAdjustToWithinGrandparentBounds == null) {
            booleanValue = generateTypedArray.getBoolean(R.styleable.Badge_autoAdjustToWithinGrandparentBounds, false);
        } else {
            booleanValue = state.autoAdjustToWithinGrandparentBounds.booleanValue();
        }
        state2.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(booleanValue);
        generateTypedArray.recycle();
        if (state.numberLocale == null) {
            state2.numberLocale = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            state2.numberLocale = state.numberLocale;
        }
        this.overridingState = state;
    }

    private TypedArray generateTypedArray(Context context, int i, int i2, int i3) {
        AttributeSet attributeSet;
        int i4;
        if (i != 0) {
            attributeSet = DrawableUtils.parseDrawableXml(context, i, BADGE_RESOURCE_TAG);
            i4 = attributeSet.getStyleAttribute();
        } else {
            attributeSet = null;
            i4 = 0;
        }
        return ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Badge, i2, i4 == 0 ? i3 : i4, new int[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVisible() {
        return this.currentState.isVisible.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVisible(boolean z) {
        this.overridingState.isVisible = Boolean.valueOf(z);
        this.currentState.isVisible = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasNumber() {
        return this.currentState.number != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumber() {
        return this.currentState.number;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumber(int i) {
        this.overridingState.number = i;
        this.currentState.number = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearNumber() {
        setNumber(-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasText() {
        return this.currentState.text != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getText() {
        return this.currentState.text;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setText(String str) {
        this.overridingState.text = str;
        this.currentState.text = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearText() {
        setText(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAlpha() {
        return this.currentState.alpha;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAlpha(int i) {
        this.overridingState.alpha = i;
        this.currentState.alpha = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxCharacterCount() {
        return this.currentState.maxCharacterCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxCharacterCount(int i) {
        this.overridingState.maxCharacterCount = i;
        this.currentState.maxCharacterCount = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxNumber() {
        return this.currentState.maxNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxNumber(int i) {
        this.overridingState.maxNumber = i;
        this.currentState.maxNumber = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBackgroundColor() {
        return this.currentState.backgroundColor.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundColor(int i) {
        this.overridingState.backgroundColor = Integer.valueOf(i);
        this.currentState.backgroundColor = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeTextColor() {
        return this.currentState.badgeTextColor.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeTextColor(int i) {
        this.overridingState.badgeTextColor = Integer.valueOf(i);
        this.currentState.badgeTextColor = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTextAppearanceResId() {
        return this.currentState.badgeTextAppearanceResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTextAppearanceResId(int i) {
        this.overridingState.badgeTextAppearanceResId = Integer.valueOf(i);
        this.currentState.badgeTextAppearanceResId = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeShapeAppearanceResId() {
        return this.currentState.badgeShapeAppearanceResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeShapeAppearanceResId(int i) {
        this.overridingState.badgeShapeAppearanceResId = Integer.valueOf(i);
        this.currentState.badgeShapeAppearanceResId = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeShapeAppearanceOverlayResId() {
        return this.currentState.badgeShapeAppearanceOverlayResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeShapeAppearanceOverlayResId(int i) {
        this.overridingState.badgeShapeAppearanceOverlayResId = Integer.valueOf(i);
        this.currentState.badgeShapeAppearanceOverlayResId = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeWithTextShapeAppearanceResId() {
        return this.currentState.badgeWithTextShapeAppearanceResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeWithTextShapeAppearanceResId(int i) {
        this.overridingState.badgeWithTextShapeAppearanceResId = Integer.valueOf(i);
        this.currentState.badgeWithTextShapeAppearanceResId = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeWithTextShapeAppearanceOverlayResId() {
        return this.currentState.badgeWithTextShapeAppearanceOverlayResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeWithTextShapeAppearanceOverlayResId(int i) {
        this.overridingState.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(i);
        this.currentState.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeGravity() {
        return this.currentState.badgeGravity.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeGravity(int i) {
        this.overridingState.badgeGravity = Integer.valueOf(i);
        this.currentState.badgeGravity = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeHorizontalPadding() {
        return this.currentState.badgeHorizontalPadding.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeHorizontalPadding(int i) {
        this.overridingState.badgeHorizontalPadding = Integer.valueOf(i);
        this.currentState.badgeHorizontalPadding = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeVerticalPadding() {
        return this.currentState.badgeVerticalPadding.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeVerticalPadding(int i) {
        this.overridingState.badgeVerticalPadding = Integer.valueOf(i);
        this.currentState.badgeVerticalPadding = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHorizontalOffsetWithoutText() {
        return this.currentState.horizontalOffsetWithoutText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHorizontalOffsetWithoutText(int i) {
        this.overridingState.horizontalOffsetWithoutText = Integer.valueOf(i);
        this.currentState.horizontalOffsetWithoutText = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVerticalOffsetWithoutText() {
        return this.currentState.verticalOffsetWithoutText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVerticalOffsetWithoutText(int i) {
        this.overridingState.verticalOffsetWithoutText = Integer.valueOf(i);
        this.currentState.verticalOffsetWithoutText = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHorizontalOffsetWithText() {
        return this.currentState.horizontalOffsetWithText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHorizontalOffsetWithText(int i) {
        this.overridingState.horizontalOffsetWithText = Integer.valueOf(i);
        this.currentState.horizontalOffsetWithText = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVerticalOffsetWithText() {
        return this.currentState.verticalOffsetWithText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVerticalOffsetWithText(int i) {
        this.overridingState.verticalOffsetWithText = Integer.valueOf(i);
        this.currentState.verticalOffsetWithText = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getLargeFontVerticalOffsetAdjustment() {
        return this.currentState.largeFontVerticalOffsetAdjustment.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLargeFontVerticalOffsetAdjustment(int i) {
        this.overridingState.largeFontVerticalOffsetAdjustment = Integer.valueOf(i);
        this.currentState.largeFontVerticalOffsetAdjustment = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAdditionalHorizontalOffset() {
        return this.currentState.additionalHorizontalOffset.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalHorizontalOffset(int i) {
        this.overridingState.additionalHorizontalOffset = Integer.valueOf(i);
        this.currentState.additionalHorizontalOffset = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAdditionalVerticalOffset() {
        return this.currentState.additionalVerticalOffset.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalVerticalOffset(int i) {
        this.overridingState.additionalVerticalOffset = Integer.valueOf(i);
        this.currentState.additionalVerticalOffset = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getContentDescriptionForText() {
        return this.currentState.contentDescriptionForText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionForText(CharSequence charSequence) {
        this.overridingState.contentDescriptionForText = charSequence;
        this.currentState.contentDescriptionForText = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getContentDescriptionNumberless() {
        return this.currentState.contentDescriptionNumberless;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionNumberless(CharSequence charSequence) {
        this.overridingState.contentDescriptionNumberless = charSequence;
        this.currentState.contentDescriptionNumberless = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getContentDescriptionQuantityStrings() {
        return this.currentState.contentDescriptionQuantityStrings;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionQuantityStringsResource(int i) {
        this.overridingState.contentDescriptionQuantityStrings = i;
        this.currentState.contentDescriptionQuantityStrings = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getContentDescriptionExceedsMaxBadgeNumberStringResource() {
        return this.currentState.contentDescriptionExceedsMaxBadgeNumberRes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionExceedsMaxBadgeNumberStringResource(int i) {
        this.overridingState.contentDescriptionExceedsMaxBadgeNumberRes = i;
        this.currentState.contentDescriptionExceedsMaxBadgeNumberRes = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale getNumberLocale() {
        return this.currentState.numberLocale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumberLocale(Locale locale) {
        this.overridingState.numberLocale = locale;
        this.currentState.numberLocale = locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAutoAdjustedToGrandparentBounds() {
        return this.currentState.autoAdjustToWithinGrandparentBounds.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAutoAdjustToGrandparentBounds(boolean z) {
        this.overridingState.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(z);
        this.currentState.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(z);
    }

    private static int readColorFromAttributes(Context context, TypedArray typedArray, int i) {
        return MaterialResources.getColorStateList(context, typedArray, i).getDefaultColor();
    }

    /* loaded from: classes2.dex */
    public static final class State implements Parcelable {
        private static final int BADGE_NUMBER_NONE = -1;
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.google.android.material.badge.BadgeState.State.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public State[] newArray(int i) {
                return new State[i];
            }
        };
        private static final int NOT_SET = -2;
        private Integer additionalHorizontalOffset;
        private Integer additionalVerticalOffset;
        private int alpha;
        private Boolean autoAdjustToWithinGrandparentBounds;
        private Integer backgroundColor;
        private Integer badgeGravity;
        private Integer badgeHorizontalPadding;
        private int badgeResId;
        private Integer badgeShapeAppearanceOverlayResId;
        private Integer badgeShapeAppearanceResId;
        private Integer badgeTextAppearanceResId;
        private Integer badgeTextColor;
        private Integer badgeVerticalPadding;
        private Integer badgeWithTextShapeAppearanceOverlayResId;
        private Integer badgeWithTextShapeAppearanceResId;
        private int contentDescriptionExceedsMaxBadgeNumberRes;
        private CharSequence contentDescriptionForText;
        private CharSequence contentDescriptionNumberless;
        private int contentDescriptionQuantityStrings;
        private Integer horizontalOffsetWithText;
        private Integer horizontalOffsetWithoutText;
        private Boolean isVisible;
        private Integer largeFontVerticalOffsetAdjustment;
        private int maxCharacterCount;
        private int maxNumber;
        private int number;
        private Locale numberLocale;
        private String text;
        private Integer verticalOffsetWithText;
        private Integer verticalOffsetWithoutText;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public State() {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = true;
        }

        State(Parcel parcel) {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = true;
            this.badgeResId = parcel.readInt();
            this.backgroundColor = (Integer) parcel.readSerializable();
            this.badgeTextColor = (Integer) parcel.readSerializable();
            this.badgeTextAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.alpha = parcel.readInt();
            this.text = parcel.readString();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.maxNumber = parcel.readInt();
            this.contentDescriptionForText = parcel.readString();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = (Integer) parcel.readSerializable();
            this.badgeHorizontalPadding = (Integer) parcel.readSerializable();
            this.badgeVerticalPadding = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithText = (Integer) parcel.readSerializable();
            this.largeFontVerticalOffsetAdjustment = (Integer) parcel.readSerializable();
            this.additionalHorizontalOffset = (Integer) parcel.readSerializable();
            this.additionalVerticalOffset = (Integer) parcel.readSerializable();
            this.isVisible = (Boolean) parcel.readSerializable();
            this.numberLocale = (Locale) parcel.readSerializable();
            this.autoAdjustToWithinGrandparentBounds = (Boolean) parcel.readSerializable();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.badgeResId);
            parcel.writeSerializable(this.backgroundColor);
            parcel.writeSerializable(this.badgeTextColor);
            parcel.writeSerializable(this.badgeTextAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceOverlayResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceOverlayResId);
            parcel.writeInt(this.alpha);
            parcel.writeString(this.text);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeInt(this.maxNumber);
            CharSequence charSequence = this.contentDescriptionForText;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.contentDescriptionNumberless;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeSerializable(this.badgeGravity);
            parcel.writeSerializable(this.badgeHorizontalPadding);
            parcel.writeSerializable(this.badgeVerticalPadding);
            parcel.writeSerializable(this.horizontalOffsetWithoutText);
            parcel.writeSerializable(this.verticalOffsetWithoutText);
            parcel.writeSerializable(this.horizontalOffsetWithText);
            parcel.writeSerializable(this.verticalOffsetWithText);
            parcel.writeSerializable(this.largeFontVerticalOffsetAdjustment);
            parcel.writeSerializable(this.additionalHorizontalOffset);
            parcel.writeSerializable(this.additionalVerticalOffset);
            parcel.writeSerializable(this.isVisible);
            parcel.writeSerializable(this.numberLocale);
            parcel.writeSerializable(this.autoAdjustToWithinGrandparentBounds);
        }
    }
}
