package com.rubensousa.dpadrecyclerview;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParentAlignment.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u0000 '2\u00020\u0001:\u0002'(B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B7\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0002\u0010\u000eJ\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003J\t\u0010\u001a\u001a\u00020\fHÆ\u0003J\t\u0010\u001b\u001a\u00020\fHÆ\u0003J;\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\fHÆ\u0001J\b\u0010\u001d\u001a\u00020\bH\u0016J\u0013\u0010\u001e\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\bHÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013¨\u0006)"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "edge", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;", "offset", "", "fraction", "", "isFractionEnabled", "", "preferKeylineOverEdge", "(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;IFZZ)V", "getEdge", "()Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;", "getFraction", "()F", "()Z", "getOffset", "()I", "getPreferKeylineOverEdge", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "flags", "CREATOR", "Edge", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ParentAlignment implements Parcelable {

    /* renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Edge edge;
    private final float fraction;
    private final boolean isFractionEnabled;
    private final int offset;
    private final boolean preferKeylineOverEdge;

    public ParentAlignment() {
        this(null, 0, 0.0f, false, false, 31, null);
    }

    public static /* synthetic */ ParentAlignment copy$default(ParentAlignment parentAlignment, Edge edge, int i, float f, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            edge = parentAlignment.edge;
        }
        if ((i2 & 2) != 0) {
            i = parentAlignment.offset;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            f = parentAlignment.fraction;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            z = parentAlignment.isFractionEnabled;
        }
        boolean z3 = z;
        if ((i2 & 16) != 0) {
            z2 = parentAlignment.preferKeylineOverEdge;
        }
        return parentAlignment.copy(edge, i3, f2, z3, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final Edge getEdge() {
        return this.edge;
    }

    /* renamed from: component2, reason: from getter */
    public final int getOffset() {
        return this.offset;
    }

    /* renamed from: component3, reason: from getter */
    public final float getFraction() {
        return this.fraction;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsFractionEnabled() {
        return this.isFractionEnabled;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getPreferKeylineOverEdge() {
        return this.preferKeylineOverEdge;
    }

    public final ParentAlignment copy(Edge edge, int offset, float fraction, boolean isFractionEnabled, boolean preferKeylineOverEdge) {
        Intrinsics.checkNotNullParameter(edge, "edge");
        return new ParentAlignment(edge, offset, fraction, isFractionEnabled, preferKeylineOverEdge);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ParentAlignment)) {
            return false;
        }
        ParentAlignment parentAlignment = (ParentAlignment) other;
        return this.edge == parentAlignment.edge && this.offset == parentAlignment.offset && Float.compare(this.fraction, parentAlignment.fraction) == 0 && this.isFractionEnabled == parentAlignment.isFractionEnabled && this.preferKeylineOverEdge == parentAlignment.preferKeylineOverEdge;
    }

    public final Edge getEdge() {
        return this.edge;
    }

    public final float getFraction() {
        return this.fraction;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final boolean getPreferKeylineOverEdge() {
        return this.preferKeylineOverEdge;
    }

    public int hashCode() {
        return (((((((this.edge.hashCode() * 31) + Integer.hashCode(this.offset)) * 31) + Float.hashCode(this.fraction)) * 31) + Boolean.hashCode(this.isFractionEnabled)) * 31) + Boolean.hashCode(this.preferKeylineOverEdge);
    }

    public final boolean isFractionEnabled() {
        return this.isFractionEnabled;
    }

    public String toString() {
        return "ParentAlignment(edge=" + this.edge + ", offset=" + this.offset + ", fraction=" + this.fraction + ", isFractionEnabled=" + this.isFractionEnabled + ", preferKeylineOverEdge=" + this.preferKeylineOverEdge + ')';
    }

    public ParentAlignment(Edge edge, int i, float f, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(edge, "edge");
        this.edge = edge;
        this.offset = i;
        this.fraction = f;
        this.isFractionEnabled = z;
        this.preferKeylineOverEdge = z2;
        if (0.0f > f || f > 1.0f) {
            throw new IllegalArgumentException("fraction must be a value between 0f and 1f".toString());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ParentAlignment(com.rubensousa.dpadrecyclerview.ParentAlignment.Edge r4, int r5, float r6, boolean r7, boolean r8, int r9, kotlin.jvm.internal.DefaultConstructorMarker r10) {
        /*
            r3 = this;
            r10 = r9 & 1
            if (r10 == 0) goto L6
            com.rubensousa.dpadrecyclerview.ParentAlignment$Edge r4 = com.rubensousa.dpadrecyclerview.ParentAlignment.Edge.MIN_MAX
        L6:
            r10 = r9 & 2
            r0 = 0
            if (r10 == 0) goto Ld
            r10 = r0
            goto Le
        Ld:
            r10 = r5
        Le:
            r5 = r9 & 4
            if (r5 == 0) goto L14
            r6 = 1056964608(0x3f000000, float:0.5)
        L14:
            r1 = r6
            r5 = r9 & 8
            r6 = 1
            if (r5 == 0) goto L1c
            r2 = r6
            goto L1d
        L1c:
            r2 = r7
        L1d:
            r5 = r9 & 16
            if (r5 == 0) goto L28
            com.rubensousa.dpadrecyclerview.ParentAlignment$Edge r5 = com.rubensousa.dpadrecyclerview.ParentAlignment.Edge.MAX
            if (r4 != r5) goto L27
            r8 = r6
            goto L28
        L27:
            r8 = r0
        L28:
            r0 = r8
            r5 = r3
            r6 = r4
            r7 = r10
            r8 = r1
            r9 = r2
            r10 = r0
            r5.<init>(r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rubensousa.dpadrecyclerview.ParentAlignment.<init>(com.rubensousa.dpadrecyclerview.ParentAlignment$Edge, int, float, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* compiled from: ParentAlignment.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ParentAlignment$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* renamed from: com.rubensousa.dpadrecyclerview.ParentAlignment$CREATOR, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion implements Parcelable.Creator<ParentAlignment> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParentAlignment createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ParentAlignment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParentAlignment[] newArray(int size) {
            return new ParentAlignment[size];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ParentAlignment(Parcel parcel) {
        this(Edge.values()[parcel.readInt()], parcel.readInt(), parcel.readFloat(), parcel.readByte() != 0, parcel.readByte() != 0);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(this.edge.ordinal());
        parcel.writeInt(this.offset);
        parcel.writeFloat(this.fraction);
        parcel.writeByte(this.isFractionEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.preferKeylineOverEdge ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ParentAlignment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;", "", "(Ljava/lang/String;I)V", "NONE", "MIN", "MAX", "MIN_MAX", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Edge {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Edge[] $VALUES;
        public static final Edge NONE = new Edge("NONE", 0);
        public static final Edge MIN = new Edge("MIN", 1);
        public static final Edge MAX = new Edge("MAX", 2);
        public static final Edge MIN_MAX = new Edge("MIN_MAX", 3);

        private static final /* synthetic */ Edge[] $values() {
            return new Edge[]{NONE, MIN, MAX, MIN_MAX};
        }

        public static EnumEntries<Edge> getEntries() {
            return $ENTRIES;
        }

        public static Edge valueOf(String str) {
            return (Edge) Enum.valueOf(Edge.class, str);
        }

        public static Edge[] values() {
            return (Edge[]) $VALUES.clone();
        }

        private Edge(String str, int i) {
        }

        static {
            Edge[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }
}
