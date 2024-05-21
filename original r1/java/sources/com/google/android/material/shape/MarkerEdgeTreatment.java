package com.google.android.material.shape;

/* loaded from: classes2.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {
    private final float radius;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.shape.EdgeTreatment
    public boolean forceIntersection() {
        return true;
    }

    public MarkerEdgeTreatment(float f) {
        this.radius = f - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, ShapePath shapePath) {
        float sqrt = (float) ((this.radius * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.radius, 2.0d) - Math.pow(sqrt, 2.0d));
        shapePath.reset(f2 - sqrt, ((float) (-((this.radius * Math.sqrt(2.0d)) - this.radius))) + sqrt2);
        shapePath.lineTo(f2, (float) (-((this.radius * Math.sqrt(2.0d)) - this.radius)));
        shapePath.lineTo(f2 + sqrt, ((float) (-((this.radius * Math.sqrt(2.0d)) - this.radius))) + sqrt2);
    }
}
