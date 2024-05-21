package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Region.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0007\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\n\u001a0\u0010\b\u001a\u00020\t*\u00020\u00012!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\t0\u000bH\u0086\b\u001a\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010*\u00020\u0001H\u0086\u0002\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f¨\u0006\u0017"}, d2 = {"and", "Landroid/graphics/Region;", "r", "Landroid/graphics/Rect;", "contains", "", "p", "Landroid/graphics/Point;", "forEach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "rect", "iterator", "", "minus", "not", "or", "plus", "unaryMinus", "xor", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RegionKt {
    public static final boolean contains(Region region, Point point) {
        return region.contains(point.x, point.y);
    }

    public static final Region plus(Region region, Rect rect) {
        Region region2 = new Region(region);
        region2.union(rect);
        return region2;
    }

    public static final Region plus(Region region, Region region2) {
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.UNION);
        return region3;
    }

    public static final Region minus(Region region, Rect rect) {
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region minus(Region region, Region region2) {
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.DIFFERENCE);
        return region3;
    }

    public static final Region unaryMinus(Region region) {
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region and(Region region, Rect rect) {
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.INTERSECT);
        return region2;
    }

    public static final Region and(Region region, Region region2) {
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.INTERSECT);
        return region3;
    }

    public static final Region xor(Region region, Rect rect) {
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.XOR);
        return region2;
    }

    public static final Region xor(Region region, Region region2) {
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.XOR);
        return region3;
    }

    public static final void forEach(Region region, Function1<? super Rect, Unit> function1) {
        RegionIterator regionIterator = new RegionIterator(region);
        while (true) {
            Rect rect = new Rect();
            if (!regionIterator.next(rect)) {
                return;
            } else {
                function1.invoke(rect);
            }
        }
    }

    public static final Iterator<Rect> iterator(Region region) {
        return new RegionKt$iterator$1(region);
    }

    public static final Region not(Region region) {
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region or(Region region, Rect rect) {
        Region region2 = new Region(region);
        region2.union(rect);
        return region2;
    }

    public static final Region or(Region region, Region region2) {
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.UNION);
        return region3;
    }
}
