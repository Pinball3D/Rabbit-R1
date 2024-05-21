package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.appcompat.graphics.drawable.DrawableContainerCompat;
import androidx.appcompat.graphics.drawable.StateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AnimatedStateListDrawableCompat extends StateListDrawableCompat implements TintAwareDrawable {
    private static final String ELEMENT_ITEM = "item";
    private static final String ELEMENT_TRANSITION = "transition";
    private static final String ITEM_MISSING_DRAWABLE_ERROR = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable";
    private static final String LOGTAG = "AnimatedStateListDrawableCompat";
    private static final String TRANSITION_MISSING_DRAWABLE_ERROR = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable";
    private static final String TRANSITION_MISSING_FROM_TO_ID = ": <transition> tag requires 'fromId' & 'toId' attributes";
    private boolean mMutated;
    private AnimatedStateListState mState;
    private Transition mTransition;
    private int mTransitionFromIndex;
    private int mTransitionToIndex;

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public AnimatedStateListDrawableCompat() {
        this(null, null);
    }

    AnimatedStateListDrawableCompat(AnimatedStateListState animatedStateListState, Resources resources) {
        super(null);
        this.mTransitionToIndex = -1;
        this.mTransitionFromIndex = -1;
        setConstantState(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public static AnimatedStateListDrawableCompat create(Context context, int i, Resources.Theme theme) {
        int next;
        try {
            Resources resources = context.getResources();
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return createFromXmlInner(context, resources, xml, asAttributeSet, theme);
        } catch (IOException e) {
            Log.e(LOGTAG, "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e(LOGTAG, "parser error", e2);
            return null;
        }
    }

    public static AnimatedStateListDrawableCompat createFromXmlInner(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        AnimatedStateListDrawableCompat animatedStateListDrawableCompat = new AnimatedStateListDrawableCompat();
        animatedStateListDrawableCompat.inflate(context, resources, xmlPullParser, attributeSet, theme);
        return animatedStateListDrawableCompat;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat
    public void inflate(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableCompat);
        setVisible(obtainAttributes.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        updateStateFromTypedArray(obtainAttributes);
        updateDensity(resources);
        obtainAttributes.recycle();
        inflateChildElements(context, resources, xmlPullParser, attributeSet, theme);
        init();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Transition transition = this.mTransition;
        if (transition != null && (visible || z2)) {
            if (z) {
                transition.start();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    public void addState(int[] iArr, Drawable drawable, int i) {
        ObjectsCompat.requireNonNull(drawable);
        this.mState.addStateSet(iArr, drawable, i);
        onStateChange(getState());
    }

    public <T extends Drawable & Animatable> void addTransition(int i, int i2, T t, boolean z) {
        ObjectsCompat.requireNonNull(t);
        this.mState.addTransition(i, i2, t, z);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.mTransition;
        if (transition != null) {
            transition.stop();
            this.mTransition = null;
            selectDrawable(this.mTransitionToIndex);
            this.mTransitionToIndex = -1;
            this.mTransitionFromIndex = -1;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int indexOfKeyframe = this.mState.indexOfKeyframe(iArr);
        boolean z = indexOfKeyframe != getCurrentIndex() && (selectTransition(indexOfKeyframe) || selectDrawable(indexOfKeyframe));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    private boolean selectTransition(int i) {
        int currentIndex;
        int indexOfTransition;
        Transition animatableTransition;
        Transition transition = this.mTransition;
        if (transition == null) {
            currentIndex = getCurrentIndex();
        } else {
            if (i == this.mTransitionToIndex) {
                return true;
            }
            if (i == this.mTransitionFromIndex && transition.canReverse()) {
                transition.reverse();
                this.mTransitionToIndex = this.mTransitionFromIndex;
                this.mTransitionFromIndex = i;
                return true;
            }
            currentIndex = this.mTransitionToIndex;
            transition.stop();
        }
        this.mTransition = null;
        this.mTransitionFromIndex = -1;
        this.mTransitionToIndex = -1;
        AnimatedStateListState animatedStateListState = this.mState;
        int keyframeIdAt = animatedStateListState.getKeyframeIdAt(currentIndex);
        int keyframeIdAt2 = animatedStateListState.getKeyframeIdAt(i);
        if (keyframeIdAt2 == 0 || keyframeIdAt == 0 || (indexOfTransition = animatedStateListState.indexOfTransition(keyframeIdAt, keyframeIdAt2)) < 0) {
            return false;
        }
        boolean transitionHasReversibleFlag = animatedStateListState.transitionHasReversibleFlag(keyframeIdAt, keyframeIdAt2);
        selectDrawable(indexOfTransition);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            animatableTransition = new AnimationDrawableTransition((AnimationDrawable) current, animatedStateListState.isTransitionReversed(keyframeIdAt, keyframeIdAt2), transitionHasReversibleFlag);
        } else if (current instanceof AnimatedVectorDrawableCompat) {
            animatableTransition = new AnimatedVectorDrawableTransition((AnimatedVectorDrawableCompat) current);
        } else {
            if (current instanceof Animatable) {
                animatableTransition = new AnimatableTransition((Animatable) current);
            }
            return false;
        }
        animatableTransition.start();
        this.mTransition = animatableTransition;
        this.mTransitionFromIndex = currentIndex;
        this.mTransitionToIndex = i;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class Transition {
        public boolean canReverse() {
            return false;
        }

        public void reverse() {
        }

        public abstract void start();

        public abstract void stop();

        private Transition() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimatableTransition extends Transition {
        private final Animatable mA;

        AnimatableTransition(Animatable animatable) {
            super();
            this.mA = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void start() {
            this.mA.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void stop() {
            this.mA.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimationDrawableTransition extends Transition {
        private final ObjectAnimator mAnim;
        private final boolean mHasReversibleFlag;

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public boolean canReverse() {
            return this.mHasReversibleFlag;
        }

        AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            FrameInterpolator frameInterpolator = new FrameInterpolator(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            Compatibility.Api18Impl.setAutoCancel(ofInt, true);
            ofInt.setDuration(frameInterpolator.getTotalDuration());
            ofInt.setInterpolator(frameInterpolator);
            this.mHasReversibleFlag = z2;
            this.mAnim = ofInt;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void start() {
            this.mAnim.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void reverse() {
            this.mAnim.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void stop() {
            this.mAnim.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimatedVectorDrawableTransition extends Transition {
        private final AnimatedVectorDrawableCompat mAvd;

        AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            super();
            this.mAvd = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void start() {
            this.mAvd.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void stop() {
            this.mAvd.stop();
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        AnimatedStateListState animatedStateListState = this.mState;
        animatedStateListState.mChangingConfigurations |= Compatibility.Api21Impl.getChangingConfigurations(typedArray);
        animatedStateListState.setVariablePadding(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, animatedStateListState.mVariablePadding));
        animatedStateListState.setConstantSize(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_constantSize, animatedStateListState.mConstantSize));
        animatedStateListState.setEnterFadeDuration(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, animatedStateListState.mEnterFadeDuration));
        animatedStateListState.setExitFadeDuration(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, animatedStateListState.mExitFadeDuration));
        setDither(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_dither, animatedStateListState.mDither));
    }

    private void init() {
        onStateChange(getState());
    }

    private void inflateChildElements(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals(ELEMENT_ITEM)) {
                    parseItem(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals(ELEMENT_TRANSITION)) {
                    parseTransition(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if (r4 != 2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r10.getName().equals("animated-vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        r4 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.createFromXmlInner(r8, r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
    
        r4 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006e, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.TRANSITION_MISSING_DRAWABLE_ERROR);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
    
        if (r4 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0071, code lost:
    
        if (r1 == (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0073, code lost:
    
        if (r3 == (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007b, code lost:
    
        return r7.mState.addTransition(r1, r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0098, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.TRANSITION_MISSING_FROM_TO_ID);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.TRANSITION_MISSING_DRAWABLE_ERROR);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
    
        if (r4 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
    
        r4 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
    
        if (r4 != 4) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parseTransition(android.content.Context r8, android.content.res.Resources r9, org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.content.res.Resources.Theme r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r7 = this;
            int[] r0 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableTransition
            android.content.res.TypedArray r0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r9, r12, r11, r0)
            int r1 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableTransition_android_fromId
            r2 = -1
            int r1 = r0.getResourceId(r1, r2)
            int r3 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableTransition_android_toId
            int r3 = r0.getResourceId(r3, r2)
            int r4 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableTransition_android_drawable
            int r4 = r0.getResourceId(r4, r2)
            if (r4 <= 0) goto L24
            androidx.appcompat.widget.ResourceManagerInternal r5 = androidx.appcompat.widget.ResourceManagerInternal.get()
            android.graphics.drawable.Drawable r4 = r5.getDrawable(r8, r4)
            goto L25
        L24:
            r4 = 0
        L25:
            int r5 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableTransition_android_reversible
            r6 = 0
            boolean r5 = r0.getBoolean(r5, r6)
            r0.recycle()
            java.lang.String r0 = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r4 != 0) goto L6f
        L33:
            int r4 = r10.next()
            r6 = 4
            if (r4 != r6) goto L3b
            goto L33
        L3b:
            r6 = 2
            if (r4 != r6) goto L54
            java.lang.String r4 = r10.getName()
            java.lang.String r6 = "animated-vector"
            boolean r4 = r4.equals(r6)
            if (r4 == 0) goto L4f
            androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat r4 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.createFromXmlInner(r8, r9, r10, r11, r12)
            goto L6f
        L4f:
            android.graphics.drawable.Drawable r4 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r9, r10, r11, r12)
            goto L6f
        L54:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L6f:
            if (r4 == 0) goto L99
            if (r1 == r2) goto L7c
            if (r3 == r2) goto L7c
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r7 = r7.mState
            int r7 = r7.addTransition(r1, r3, r4, r5)
            return r7
        L7c:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r9 = ": <transition> tag requires 'fromId' & 'toId' attributes"
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L99:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.parseTransition(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r5 != 2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
    
        if (r7.getName().equals("vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        r5 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
    
        r5 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0067, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.ITEM_MISSING_DRAWABLE_ERROR);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
    
        if (r5 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
    
        return r4.mState.addStateSet(r0, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.ITEM_MISSING_DRAWABLE_ERROR);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
    
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        r5 = r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
    
        if (r5 != 4) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parseItem(android.content.Context r5, android.content.res.Resources r6, org.xmlpull.v1.XmlPullParser r7, android.util.AttributeSet r8, android.content.res.Resources.Theme r9) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r4 = this;
            int[] r0 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableItem
            android.content.res.TypedArray r0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r6, r9, r8, r0)
            int r1 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableItem_android_id
            r2 = 0
            int r1 = r0.getResourceId(r1, r2)
            int r2 = androidx.appcompat.resources.R.styleable.AnimatedStateListDrawableItem_android_drawable
            r3 = -1
            int r2 = r0.getResourceId(r2, r3)
            if (r2 <= 0) goto L1f
            androidx.appcompat.widget.ResourceManagerInternal r3 = androidx.appcompat.widget.ResourceManagerInternal.get()
            android.graphics.drawable.Drawable r5 = r3.getDrawable(r5, r2)
            goto L20
        L1f:
            r5 = 0
        L20:
            r0.recycle()
            int[] r0 = r4.extractStateSet(r8)
            java.lang.String r2 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r5 != 0) goto L68
        L2b:
            int r5 = r7.next()
            r3 = 4
            if (r5 != r3) goto L33
            goto L2b
        L33:
            r3 = 2
            if (r5 != r3) goto L4d
            java.lang.String r5 = r7.getName()
            java.lang.String r3 = "vector"
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L48
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat r5 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.createFromXmlInner(r6, r7, r8, r9)
            goto L68
        L48:
            android.graphics.drawable.Drawable r5 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r6, r7, r8, r9)
            goto L68
        L4d:
            org.xmlpull.v1.XmlPullParserException r4 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r7.getPositionDescription()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r2)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L68:
            if (r5 == 0) goto L71
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r4 = r4.mState
            int r4 = r4.addStateSet(r0, r5, r1)
            return r4
        L71:
            org.xmlpull.v1.XmlPullParserException r4 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r7.getPositionDescription()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r2)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.parseItem(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):int");
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public AnimatedStateListState cloneConstantState() {
        return new AnimatedStateListState(this.mState, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AnimatedStateListState extends StateListDrawableCompat.StateListState {
        private static final long REVERSED_BIT = 4294967296L;
        private static final long REVERSIBLE_FLAG_BIT = 8589934592L;
        SparseArrayCompat<Integer> mStateIds;
        LongSparseArray<Long> mTransitions;

        private static long generateTransitionKey(int i, int i2) {
            return i2 | (i << 32);
        }

        AnimatedStateListState(AnimatedStateListState animatedStateListState, AnimatedStateListDrawableCompat animatedStateListDrawableCompat, Resources resources) {
            super(animatedStateListState, animatedStateListDrawableCompat, resources);
            if (animatedStateListState != null) {
                this.mTransitions = animatedStateListState.mTransitions;
                this.mStateIds = animatedStateListState.mStateIds;
            } else {
                this.mTransitions = new LongSparseArray<>();
                this.mStateIds = new SparseArrayCompat<>();
            }
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.StateListState, androidx.appcompat.graphics.drawable.DrawableContainerCompat.DrawableContainerState
        void mutate() {
            this.mTransitions = this.mTransitions.m16clone();
            this.mStateIds = this.mStateIds.m17clone();
        }

        int addTransition(int i, int i2, Drawable drawable, boolean z) {
            int addChild = super.addChild(drawable);
            long generateTransitionKey = generateTransitionKey(i, i2);
            long j = z ? REVERSIBLE_FLAG_BIT : 0L;
            long j2 = addChild;
            this.mTransitions.append(generateTransitionKey, Long.valueOf(j2 | j));
            if (z) {
                this.mTransitions.append(generateTransitionKey(i2, i), Long.valueOf(REVERSED_BIT | j2 | j));
            }
            return addChild;
        }

        int addStateSet(int[] iArr, Drawable drawable, int i) {
            int addStateSet = super.addStateSet(iArr, drawable);
            this.mStateIds.put(addStateSet, Integer.valueOf(i));
            return addStateSet;
        }

        int indexOfKeyframe(int[] iArr) {
            int indexOfStateSet = super.indexOfStateSet(iArr);
            return indexOfStateSet >= 0 ? indexOfStateSet : super.indexOfStateSet(StateSet.WILD_CARD);
        }

        int getKeyframeIdAt(int i) {
            if (i < 0) {
                return 0;
            }
            return this.mStateIds.get(i, 0).intValue();
        }

        int indexOfTransition(int i, int i2) {
            return (int) this.mTransitions.get(generateTransitionKey(i, i2), -1L).longValue();
        }

        boolean isTransitionReversed(int i, int i2) {
            return (this.mTransitions.get(generateTransitionKey(i, i2), -1L).longValue() & REVERSED_BIT) != 0;
        }

        boolean transitionHasReversibleFlag(int i, int i2) {
            return (this.mTransitions.get(generateTransitionKey(i, i2), -1L).longValue() & REVERSIBLE_FLAG_BIT) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.StateListState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.StateListState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    void setConstantState(DrawableContainerCompat.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof AnimatedStateListState) {
            this.mState = (AnimatedStateListState) drawableContainerState;
        }
    }

    /* loaded from: classes.dex */
    private static class FrameInterpolator implements TimeInterpolator {
        private int[] mFrameTimes;
        private int mFrames;
        private int mTotalDuration;

        int getTotalDuration() {
            return this.mTotalDuration;
        }

        FrameInterpolator(AnimationDrawable animationDrawable, boolean z) {
            updateFrames(animationDrawable, z);
        }

        int updateFrames(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.mFrames = numberOfFrames;
            int[] iArr = this.mFrameTimes;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.mFrameTimes = new int[numberOfFrames];
            }
            int[] iArr2 = this.mFrameTimes;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.mTotalDuration = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.mTotalDuration) + 0.5f);
            int i2 = this.mFrames;
            int[] iArr = this.mFrameTimes;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.mTotalDuration : 0.0f);
        }
    }
}
