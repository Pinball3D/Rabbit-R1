package com.rubensousa.dpadrecyclerview;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChildAlignment.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B7\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b¢\u0006\u0002\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J\t\u0010\u0018\u001a\u00020\u000bHÆ\u0003J\t\u0010\u0019\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001a\u001a\u00020\u000bHÆ\u0003J;\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000bHÆ\u0001J\b\u0010\u001c\u001a\u00020\u0007H\u0016J\u0013\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u0007HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001J\u0018\u0010#\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0007H\u0016R\u0014\u0010\r\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\f\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "Lcom/rubensousa/dpadrecyclerview/ViewAlignment;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "offset", "", "fraction", "", "isFractionEnabled", "", "includePadding", "alignToBaseline", "(IFZZZ)V", "getAlignToBaseline", "()Z", "getFraction", "()F", "getIncludePadding", "getOffset", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "flags", "CREATOR", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ChildAlignment implements ViewAlignment, Parcelable {

    /* renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean alignToBaseline;
    private final float fraction;
    private final boolean includePadding;
    private final boolean isFractionEnabled;
    private final int offset;

    public ChildAlignment() {
        this(0, 0.0f, false, false, false, 31, null);
    }

    public static /* synthetic */ ChildAlignment copy$default(ChildAlignment childAlignment, int i, float f, boolean z, boolean z2, boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = childAlignment.offset;
        }
        if ((i2 & 2) != 0) {
            f = childAlignment.fraction;
        }
        float f2 = f;
        if ((i2 & 4) != 0) {
            z = childAlignment.isFractionEnabled;
        }
        boolean z4 = z;
        if ((i2 & 8) != 0) {
            z2 = childAlignment.includePadding;
        }
        boolean z5 = z2;
        if ((i2 & 16) != 0) {
            z3 = childAlignment.alignToBaseline;
        }
        return childAlignment.copy(i, f2, z4, z5, z3);
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

    public final ChildAlignment copy(int offset, float fraction, boolean isFractionEnabled, boolean includePadding, boolean alignToBaseline) {
        return new ChildAlignment(offset, fraction, isFractionEnabled, includePadding, alignToBaseline);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChildAlignment)) {
            return false;
        }
        ChildAlignment childAlignment = (ChildAlignment) other;
        return this.offset == childAlignment.offset && Float.compare(this.fraction, childAlignment.fraction) == 0 && this.isFractionEnabled == childAlignment.isFractionEnabled && this.includePadding == childAlignment.includePadding && this.alignToBaseline == childAlignment.alignToBaseline;
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public boolean getAlignToBaseline() {
        return this.alignToBaseline;
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
        return (((((((Integer.hashCode(this.offset) * 31) + Float.hashCode(this.fraction)) * 31) + Boolean.hashCode(this.isFractionEnabled)) * 31) + Boolean.hashCode(this.includePadding)) * 31) + Boolean.hashCode(this.alignToBaseline);
    }

    @Override // com.rubensousa.dpadrecyclerview.ViewAlignment
    public boolean isFractionEnabled() {
        return this.isFractionEnabled;
    }

    public String toString() {
        return "ChildAlignment(offset=" + this.offset + ", fraction=" + this.fraction + ", isFractionEnabled=" + this.isFractionEnabled + ", includePadding=" + this.includePadding + ", alignToBaseline=" + this.alignToBaseline + ')';
    }

    public ChildAlignment(int i, float f, boolean z, boolean z2, boolean z3) {
        this.offset = i;
        this.fraction = f;
        this.isFractionEnabled = z;
        this.includePadding = z2;
        this.alignToBaseline = z3;
        float fraction = getFraction();
        if (0.0f > fraction || fraction > 1.0f) {
            throw new IllegalArgumentException("fraction must be a value between 0f and 1f".toString());
        }
    }

    public /* synthetic */ ChildAlignment(int i, float f, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0.5f : f, (i2 & 4) != 0 ? true : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3);
    }

    /* compiled from: ChildAlignment.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ChildAlignment$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* renamed from: com.rubensousa.dpadrecyclerview.ChildAlignment$CREATOR, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion implements Parcelable.Creator<ChildAlignment> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChildAlignment createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ChildAlignment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChildAlignment[] newArray(int size) {
            return new ChildAlignment[size];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ChildAlignment(Parcel parcel) {
        this(parcel.readInt(), parcel.readFloat(), parcel.readByte() != 0, parcel.readByte() != 0, parcel.readByte() != 0);
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
    }
}
