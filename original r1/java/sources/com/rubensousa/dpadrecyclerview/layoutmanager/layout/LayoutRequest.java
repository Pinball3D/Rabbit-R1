package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import androidx.core.view.GravityCompat;
import com.rubensousa.dpadrecyclerview.DpadLoopDirection;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutRequest.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J/\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00042\u0019\b\u0004\u0010/\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020-00¢\u0006\u0002\b1H\u0086\bø\u0001\u0000J\u0006\u00102\u001a\u00020-J6\u00103\u001a\u00020-2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020&J\u0006\u00105\u001a\u00020\u001cJ\u0006\u00106\u001a\u00020\u001cJ\u0006\u00107\u001a\u00020-J\u000e\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020\u0004J/\u0010:\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00042\u0019\b\u0004\u0010/\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020-00¢\u0006\u0002\b1H\u0086\bø\u0001\u0000J\u000e\u0010;\u001a\u00020-2\u0006\u00109\u001a\u00020\u0004J\u000e\u0010<\u001a\u00020-2\u0006\u0010=\u001a\u00020\u0004J\u0016\u0010>\u001a\u00020-2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0004J\u000e\u0010A\u001a\u00020-2\u0006\u0010B\u001a\u00020\u0004J\u000e\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020\u001cJ\u000e\u0010E\u001a\u00020-2\u0006\u0010D\u001a\u00020\u001cJ\u000e\u0010F\u001a\u00020-2\u0006\u0010G\u001a\u00020\u001cJ\u000e\u0010H\u001a\u00020-2\u0006\u0010I\u001a\u00020\u001cJ\b\u0010J\u001a\u00020KH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0007R\u001e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0007R\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0007R\u001e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R\u001e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001eR\u001e\u0010 \u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001eR\u001e\u0010!\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u001e\u0010\"\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001eR\u001e\u0010#\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001eR\u001e\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0007R\u001e\u0010'\u001a\u00020&2\u0006\u0010\u0003\u001a\u00020&@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001e\u0010*\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006L"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", "", "()V", "<set-?>", "", "checkpoint", "getCheckpoint", "()I", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;", "currentItemDirection", "getCurrentItemDirection", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;", "currentPosition", "getCurrentPosition", "defaultItemDirection", "getDefaultItemDirection", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;", "direction", "getDirection", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;", "extraLayoutSpaceEnd", "getExtraLayoutSpaceEnd", "extraLayoutSpaceStart", "getExtraLayoutSpaceStart", "fillSpace", "getFillSpace", "gravity", "getGravity", "", "isInfinite", "()Z", "isLayingOutScrap", "isLoopingAllowed", "isLoopingStart", "isRecyclingEnabled", "isVertical", "itemCount", "getItemCount", "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "loopDirection", "getLoopDirection", "()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "reverseLayout", "getReverseLayout", "append", "", "referencePosition", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "clear", Session.JsonKeys.INIT, "infinite", "isAppending", "isPrepending", "moveToNextPosition", "offsetCheckpoint", "offset", "prepend", "setCheckpoint", "setCurrentPosition", "position", "setExtraLayoutSpace", "start", "end", "setFillSpace", "space", "setIsLoopingAllowed", "isLooping", "setIsLoopingStart", "setLayingOutScrap", "layoutScrap", "setRecyclingEnabled", "enabled", "toString", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutRequest {
    private int checkpoint;
    private int currentPosition;
    private int extraLayoutSpaceEnd;
    private int extraLayoutSpaceStart;
    private int fillSpace;
    private boolean isInfinite;
    private boolean isLayingOutScrap;
    private boolean isLoopingAllowed;
    private boolean isLoopingStart;
    private int itemCount;
    private boolean reverseLayout;
    private LayoutDirection direction = LayoutDirection.END;
    private ItemDirection defaultItemDirection = ItemDirection.TAIL;
    private ItemDirection currentItemDirection = ItemDirection.TAIL;
    private boolean isRecyclingEnabled = true;
    private int gravity = GravityCompat.START;
    private boolean isVertical = true;
    private DpadLoopDirection loopDirection = DpadLoopDirection.NONE;

    public final void clear() {
        this.currentPosition = -1;
        this.extraLayoutSpaceEnd = 0;
        this.extraLayoutSpaceStart = 0;
        this.fillSpace = 0;
        this.checkpoint = 0;
    }

    public final int getCheckpoint() {
        return this.checkpoint;
    }

    public final ItemDirection getCurrentItemDirection() {
        return this.currentItemDirection;
    }

    public final int getCurrentPosition() {
        return this.currentPosition;
    }

    public final ItemDirection getDefaultItemDirection() {
        return this.defaultItemDirection;
    }

    public final LayoutDirection getDirection() {
        return this.direction;
    }

    public final int getExtraLayoutSpaceEnd() {
        return this.extraLayoutSpaceEnd;
    }

    public final int getExtraLayoutSpaceStart() {
        return this.extraLayoutSpaceStart;
    }

    public final int getFillSpace() {
        return this.fillSpace;
    }

    public final int getGravity() {
        return this.gravity;
    }

    public final int getItemCount() {
        return this.itemCount;
    }

    public final DpadLoopDirection getLoopDirection() {
        return this.loopDirection;
    }

    public final boolean getReverseLayout() {
        return this.reverseLayout;
    }

    /* renamed from: isInfinite, reason: from getter */
    public final boolean getIsInfinite() {
        return this.isInfinite;
    }

    /* renamed from: isLayingOutScrap, reason: from getter */
    public final boolean getIsLayingOutScrap() {
        return this.isLayingOutScrap;
    }

    /* renamed from: isLoopingAllowed, reason: from getter */
    public final boolean getIsLoopingAllowed() {
        return this.isLoopingAllowed;
    }

    /* renamed from: isLoopingStart, reason: from getter */
    public final boolean getIsLoopingStart() {
        return this.isLoopingStart;
    }

    /* renamed from: isRecyclingEnabled, reason: from getter */
    public final boolean getIsRecyclingEnabled() {
        return this.isRecyclingEnabled;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    public final void offsetCheckpoint(int offset) {
        this.checkpoint += offset;
    }

    public final void setCheckpoint(int offset) {
        this.checkpoint = offset;
    }

    public final void setCurrentPosition(int position) {
        this.currentPosition = position;
    }

    public final void setExtraLayoutSpace(int start, int end) {
        this.extraLayoutSpaceStart = start;
        this.extraLayoutSpaceEnd = end;
    }

    public final void setIsLoopingAllowed(boolean isLooping) {
        this.isLoopingAllowed = isLooping;
    }

    public final void setIsLoopingStart(boolean isLooping) {
        this.isLoopingStart = isLooping;
    }

    public final void setLayingOutScrap(boolean layoutScrap) {
        this.isLayingOutScrap = layoutScrap;
    }

    public final void setRecyclingEnabled(boolean enabled) {
        this.isRecyclingEnabled = enabled;
    }

    public final void init(int itemCount, int gravity, boolean isVertical, boolean reverseLayout, boolean infinite, DpadLoopDirection loopDirection) {
        ItemDirection itemDirection;
        Intrinsics.checkNotNullParameter(loopDirection, "loopDirection");
        this.itemCount = itemCount;
        this.reverseLayout = reverseLayout;
        this.gravity = gravity;
        this.isVertical = isVertical;
        this.isInfinite = infinite;
        this.isRecyclingEnabled = false;
        if (reverseLayout) {
            itemDirection = ItemDirection.HEAD;
        } else {
            itemDirection = ItemDirection.TAIL;
        }
        this.defaultItemDirection = itemDirection;
        if (infinite) {
            this.loopDirection = DpadLoopDirection.NONE;
        } else {
            this.loopDirection = loopDirection;
        }
        this.currentItemDirection = this.defaultItemDirection;
        this.isLoopingAllowed = false;
        this.isLoopingStart = false;
    }

    public final void setFillSpace(int space) {
        this.fillSpace = Math.max(0, space);
    }

    public final void moveToNextPosition() {
        this.currentPosition += this.currentItemDirection.getValue();
        if (this.loopDirection == DpadLoopDirection.NONE || !this.isLoopingAllowed) {
            return;
        }
        int i = this.currentPosition;
        if (i == this.itemCount) {
            this.currentPosition = 0;
            return;
        }
        if (i != -1) {
            return;
        }
        if (this.loopDirection == DpadLoopDirection.MIN_MAX) {
            this.currentPosition = this.itemCount - 1;
        } else if (this.isLoopingStart) {
            this.currentPosition = this.itemCount - 1;
            this.isLoopingStart = false;
        }
    }

    public final boolean isPrepending() {
        return this.direction == LayoutDirection.START;
    }

    public final boolean isAppending() {
        return this.direction == LayoutDirection.END;
    }

    public final void append(int referencePosition, Function1<? super LayoutRequest, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        clear();
        this.direction = LayoutDirection.END;
        this.currentItemDirection = getDefaultItemDirection();
        this.currentPosition = referencePosition;
        moveToNextPosition();
        block.invoke(this);
    }

    public final void prepend(int referencePosition, Function1<? super LayoutRequest, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        clear();
        this.direction = LayoutDirection.START;
        this.currentItemDirection = getDefaultItemDirection().opposite();
        this.currentPosition = referencePosition;
        moveToNextPosition();
        block.invoke(this);
    }

    public String toString() {
        return "LayoutRequest(direction=" + this.direction + ", fillSpace=" + this.fillSpace + ", currentPosition=" + this.currentPosition + ", checkpoint=" + this.checkpoint + ", ";
    }
}
