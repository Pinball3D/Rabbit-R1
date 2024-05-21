package com.rubensousa.dpadrecyclerview;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubPositionAlignment.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005BK\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007¢\u0006\u0002\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001c\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0007HÂ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0007HÆ\u0001J\b\u0010!\u001a\u00020\u0007H\u0016J\u0013\u0010\"\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\u0006\u0010%\u001a\u00020\u0007J\t\u0010&\u001a\u00020\u0007HÖ\u0001J\t\u0010'\u001a\u00020(HÖ\u0001J\u0018\u0010)\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0007H\u0016R\u0014\u0010\r\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\f\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014¨\u0006-"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;", "Lcom/rubensousa/dpadrecyclerview/ViewAlignment;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "offset", "", "fraction", "", "isFractionEnabled", "", "includePadding", "alignToBaseline", "alignmentViewId", "focusViewId", "(IFZZZII)V", "getAlignToBaseline", "()Z", "getAlignmentViewId", "()I", "getFraction", "()F", "getIncludePadding", "getOffset", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "other", "", "getFocusViewId", "hashCode", "toString", "", "writeToParcel", "", "flags", "CREATOR", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SubPositionAlignment implements ViewAlignment, Parcelable {

    /* renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean alignToBaseline;
    private final int alignmentViewId;
    private final int focusViewId;
    private final float fraction;
    private final boolean includePadding;
    private final boolean isFractionEnabled;
    private final int offset;

    public SubPositionAlignment() {
        this(0, 0.0f, false, false, false, 0, 0, 127, null);
    }

    /* renamed from: component7, reason: from getter */
    private final int getFocusViewId() {
        return this.focusViewId;
    }

    public static /* synthetic */ SubPositionAlignment copy$default(SubPositionAlignment subPositionAlignment, int i, float f, boolean z, boolean z2, boolean z3, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = subPositionAlignment.offset;
        }
        if ((i4 & 2) != 0) {
            f = subPositionAlignment.fraction;
        }
        float f2 = f;
        if ((i4 & 4) != 0) {
            z = subPositionAlignment.isFractionEnabled;
        }
        boolean z4 = z;
        if ((i4 & 8) != 0) {
            z2 = subPositionAlignment.includePadding;
        }
        boolean z5 = z2;
        if ((i4 & 16) != 0) {
            z3 = subPositionAlignment.alignToBaseline;
        }
        boolean z6 = z3;
        if ((i4 & 32) != 0) {
            i2 = subPositionAlignment.alignmentViewId;
        }
        int i5 = i2;
        if ((i4 & 64) != 0) {
            i3 = subPositionAlignment.focusViewId;
        }
        return subPositionAlignment.copy(i, f2, z4, z5, z6, i5, i3);
    }

    /* renamed from: component1, reason: from getter */
    public final int getOffset() {
        return this.offset;
    }

    /* renamed from: component2, reason: from getter */
    public final float getFraction() {
        return this.fraction;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsFractionEnabled() {
        return this.isFractionEnabled;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIncludePadding() {
        return this.includePadding;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getAlignToBaseline() {
        return this.alignToBaseline;
    }

    /* renamed from: component6, reason: from getter */
    public final int getAlignmentViewId() {
        return this.alignmentViewId;
    }

    public final SubPositionAlignment copy(int offset, float fraction, boolean isFractionEnabled, boolean includePadding, boolean alignToBaseline, int alignmentViewId, int focusViewId) {
        return new SubPositionAlignment(offset, fraction, isFractionEnabled, includePadding, alignToBaseline, alignmentViewId, focusViewId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubPositionAlignment)) {
            return false;
        }
        SubPositionAlignment subPositionAlignment = (SubPositionAlignment) other;
        return this.offset == subPositionAlignment.offset && Float.compare(this.fraction, subPositionAlignment.fraction) == 0 && this.isFractionEnabled == subPositionAlignment.isFractionEnabled && this.includePadding == subPositionAlignment.includePadding && this.alignToBaseline == subPositionAlignment.alignToBaseline && this.alignmentViewId == subPositionAlignment.alignmentViewId && this.focusViewId == subPositionAlignment.focusViewId;
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public boolean getAlignToBaseline() {
        return this.alignToBaseline;
    }

    public final int getAlignmentViewId() {
        return this.alignmentViewId;
    }

    public final int getFocusViewId() {
        int i = this.focusViewId;
        return i != -1 ? i : this.alignmentViewId;
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public float getFraction() {
        return this.fraction;
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public boolean getIncludePadding() {
        return this.includePadding;
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public int getOffset() {
        return this.offset;
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.offset) * 31) + Float.hashCode(this.fraction)) * 31) + Boolean.hashCode(this.isFractionEnabled)) * 31) + Boolean.hashCode(this.includePadding)) * 31) + Boolean.hashCode(this.alignToBaseline)) * 31) + Integer.hashCode(this.alignmentViewId)) * 31) + Integer.hashCode(this.focusViewId);
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public boolean isFractionEnabled() {
        return this.isFractionEnabled;
    }

    public String toString() {
        return "SubPositionAlignment(offset=" + this.offset + ", fraction=" + this.fraction + ", isFractionEnabled=" + this.isFractionEnabled + ", includePadding=" + this.includePadding + ", alignToBaseline=" + this.alignToBaseline + ", alignmentViewId=" + this.alignmentViewId + ", focusViewId=" + this.focusViewId + ')';
    }

    public SubPositionAlignment(int i, float f, boolean z, boolean z2, boolean z3, int i2, int i3) {
        this.offset = i;
        this.fraction = f;
        this.isFractionEnabled = z;
        this.includePadding = z2;
        this.alignToBaseline = z3;
        this.alignmentViewId = i2;
        this.focusViewId = i3;
        float fraction = getFraction();
        if (0.0f > fraction || fraction > 1.0f) {
            throw new IllegalArgumentException("fraction must be a value between 0f and 1f".toString());
        }
    }

    public /* synthetic */ SubPositionAlignment(int i, float f, boolean z, boolean z2, boolean z3, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0.5f : f, (i4 & 4) != 0 ? true : z, (i4 & 8) != 0 ? false : z2, (i4 & 16) != 0 ? false : z3, (i4 & 32) != 0 ? -1 : i2, (i4 & 64) != 0 ? -1 : i3);
    }

    /* compiled from: SubPositionAlignment.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* renamed from: com.rubensousa.dpadrecyclerview.SubPositionAlignment$CREATOR, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion implements Parcelable.Creator<SubPositionAlignment> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubPositionAlignment createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SubPositionAlignment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubPositionAlignment[] newArray(int size) {
            return new SubPositionAlignment[size];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubPositionAlignment(Parcel parcel) {
        this(parcel.readInt(), parcel.readFloat(), parcel.readByte() != 0, parcel.readByte() != 0, parcel.readByte() != 0, parcel.readInt(), parcel.readInt());
        Intrinsics.checkNotNullParameter(parcel, "parcel");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(getOffset());
        parcel.writeFloat(getFraction());
        parcel.writeByte(isFractionEnabled() ? (byte) 1 : (byte) 0);
        parcel.writeByte(getIncludePadding() ? (byte) 1 : (byte) 0);
        parcel.writeByte(getAlignToBaseline() ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.alignmentViewId);
        parcel.writeInt(this.focusViewId);
    }
}
