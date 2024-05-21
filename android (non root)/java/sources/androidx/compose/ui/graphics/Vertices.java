package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Vertices.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0017\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\n\u0018\u00002\u00020\u0001BH\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0005ø\u0001\u0000¢\u0006\u0002\u0010\fJ\u0019\u0010\u001a\u001a\u00020\r2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005H\u0002ø\u0001\u0000J\u0019\u0010\u001b\u001a\u00020\u00132\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002ø\u0001\u0000R\u0011\u0010\b\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/graphics/Vertices;", "", "vertexMode", "Landroidx/compose/ui/graphics/VertexMode;", "positions", "", "Landroidx/compose/ui/geometry/Offset;", "textureCoordinates", "colors", "Landroidx/compose/ui/graphics/Color;", "indices", "", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "getColors", "()[I", "", "getIndices", "()[S", "", "getPositions", "()[F", "getTextureCoordinates", "getVertexMode-c2xauaI", "()I", "I", "encodeColorList", "encodePointList", "points", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Vertices {
    private final int[] colors;
    private final short[] indices;
    private final float[] positions;
    private final float[] textureCoordinates;
    private final int vertexMode;

    public /* synthetic */ Vertices(int i, List list, List list2, List list3, List list4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, list, list2, list3, list4);
    }

    public final int[] getColors() {
        return this.colors;
    }

    public final short[] getIndices() {
        return this.indices;
    }

    public final float[] getPositions() {
        return this.positions;
    }

    public final float[] getTextureCoordinates() {
        return this.textureCoordinates;
    }

    /* renamed from: getVertexMode-c2xauaI, reason: not valid java name and from getter */
    public final int getVertexMode() {
        return this.vertexMode;
    }

    private Vertices(int i, final List<Offset> positions, List<Offset> textureCoordinates, List<Color> colors, List<Integer> indices) {
        Intrinsics.checkNotNullParameter(positions, "positions");
        Intrinsics.checkNotNullParameter(textureCoordinates, "textureCoordinates");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(indices, "indices");
        this.vertexMode = i;
        Function1<Integer, Boolean> function1 = new Function1<Integer, Boolean>() { // from class: androidx.compose.ui.graphics.Vertices$outOfBounds$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final Boolean invoke(int i2) {
                return Boolean.valueOf(i2 < 0 || i2 >= positions.size());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        if (textureCoordinates.size() != positions.size()) {
            throw new IllegalArgumentException("positions and textureCoordinates lengths must match.");
        }
        if (colors.size() != positions.size()) {
            throw new IllegalArgumentException("positions and colors lengths must match.");
        }
        int size = indices.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (function1.invoke(indices.get(i2)).booleanValue()) {
                throw new IllegalArgumentException("indices values must be valid indices in the positions list.");
            }
        }
        this.positions = encodePointList(positions);
        this.textureCoordinates = encodePointList(textureCoordinates);
        this.colors = encodeColorList(colors);
        int size2 = indices.size();
        short[] sArr = new short[size2];
        for (int i3 = 0; i3 < size2; i3++) {
            sArr[i3] = (short) indices.get(i3).intValue();
        }
        this.indices = sArr;
    }

    private final int[] encodeColorList(List<Color> colors) {
        int size = colors.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ColorKt.m2693toArgb8_81llA(colors.get(i).m2649unboximpl());
        }
        return iArr;
    }

    private final float[] encodePointList(List<Offset> points) {
        float m2401getYimpl;
        int size = points.size() * 2;
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            long packedValue = points.get(i / 2).getPackedValue();
            if (i % 2 == 0) {
                m2401getYimpl = Offset.m2400getXimpl(packedValue);
            } else {
                m2401getYimpl = Offset.m2401getYimpl(packedValue);
            }
            fArr[i] = m2401getYimpl;
        }
        return fArr;
    }
}
