package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().firstPositionInMonth()) {
            super.setSelection(getAdapter().firstPositionInMonth());
        } else {
            super.setSelection(i);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().firstPositionInMonth()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().firstPositionInMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof MonthAdapter)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int dayToPosition;
        int horizontalMidPoint;
        int dayToPosition2;
        int horizontalMidPoint2;
        int width;
        int i;
        int left;
        int left2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.dateSelector;
        CalendarStyle calendarStyle = adapter.calendarStyle;
        int max = Math.max(adapter.firstPositionInMonth(), getFirstVisiblePosition());
        int min = Math.min(adapter.lastPositionInMonth(), getLastVisiblePosition());
        Long item = adapter.getItem(max);
        Long item2 = adapter.getItem(min);
        Iterator<Pair<Long, Long>> it = dateSelector.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Pair<Long, Long> next = it.next();
            if (next.first == null) {
                materialCalendarGridView = this;
            } else if (next.second != null) {
                long longValue = next.first.longValue();
                long longValue2 = next.second.longValue();
                if (!skipMonth(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                    boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                    if (longValue < item.longValue()) {
                        if (adapter.isFirstInRow(max)) {
                            left2 = 0;
                        } else if (!isLayoutRtl) {
                            left2 = materialCalendarGridView.getChildAtPosition(max - 1).getRight();
                        } else {
                            left2 = materialCalendarGridView.getChildAtPosition(max - 1).getLeft();
                        }
                        horizontalMidPoint = left2;
                        dayToPosition = max;
                    } else {
                        materialCalendarGridView.dayCompute.setTimeInMillis(longValue);
                        dayToPosition = adapter.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                        horizontalMidPoint = horizontalMidPoint(materialCalendarGridView.getChildAtPosition(dayToPosition));
                    }
                    if (longValue2 > item2.longValue()) {
                        if (adapter.isLastInRow(min)) {
                            left = getWidth();
                        } else if (!isLayoutRtl) {
                            left = materialCalendarGridView.getChildAtPosition(min).getRight();
                        } else {
                            left = materialCalendarGridView.getChildAtPosition(min).getLeft();
                        }
                        horizontalMidPoint2 = left;
                        dayToPosition2 = min;
                    } else {
                        materialCalendarGridView.dayCompute.setTimeInMillis(longValue2);
                        dayToPosition2 = adapter.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                        horizontalMidPoint2 = horizontalMidPoint(materialCalendarGridView.getChildAtPosition(dayToPosition2));
                    }
                    int itemId = (int) adapter.getItemId(dayToPosition);
                    int i2 = max;
                    int i3 = min;
                    int itemId2 = (int) adapter.getItemId(dayToPosition2);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View childAtPosition = materialCalendarGridView.getChildAtPosition(numColumns);
                        int top = childAtPosition.getTop() + calendarStyle.day.getTopInset();
                        MonthAdapter monthAdapter = adapter;
                        int bottom = childAtPosition.getBottom() - calendarStyle.day.getBottomInset();
                        if (!isLayoutRtl) {
                            i = numColumns > dayToPosition ? 0 : horizontalMidPoint;
                            width = dayToPosition2 > numColumns2 ? getWidth() : horizontalMidPoint2;
                        } else {
                            int i4 = dayToPosition2 > numColumns2 ? 0 : horizontalMidPoint2;
                            width = numColumns > dayToPosition ? getWidth() : horizontalMidPoint;
                            i = i4;
                        }
                        canvas.drawRect(i, top, width, bottom, calendarStyle.rangeFill);
                        itemId++;
                        materialCalendarGridView = this;
                        it = it;
                        adapter = monthAdapter;
                    }
                    materialCalendarGridView = this;
                    max = i2;
                    min = i3;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.nestedScrollable) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            gainFocus(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    private void gainFocus(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter().lastPositionInMonth());
        } else if (i == 130) {
            setSelection(getAdapter().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    private View getChildAtPosition(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    private static boolean skipMonth(Long l, Long l2, Long l3, Long l4) {
        return l == null || l2 == null || l3 == null || l4 == null || l3.longValue() > l2.longValue() || l4.longValue() < l.longValue();
    }

    private static int horizontalMidPoint(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }
}
