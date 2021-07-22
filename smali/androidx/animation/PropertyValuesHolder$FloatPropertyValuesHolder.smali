.class Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Landroidx/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
.end annotation


# instance fields
.field mFloatAnimatedValue:F

.field mFloatKeyframes:Landroidx/animation/Keyframes$FloatKeyframes;

.field private mFloatProperty:Landroidx/animation/FloatProperty;


# direct methods
.method varargs constructor <init>(Landroid/util/Property;[F)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Landroidx/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 1266
    invoke-virtual {p0, p2}, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 1267
    instance-of p1, p1, Landroidx/animation/FloatProperty;

    if-eqz p1, :cond_0

    .line 1268
    iget-object p1, p0, Landroidx/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast p1, Landroidx/animation/FloatProperty;

    iput-object p1, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroidx/animation/FloatProperty;

    :cond_0
    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 0

    .line 1260
    invoke-direct {p0, p1}, Landroidx/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0, p2}, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    .line 1289
    iget-object v0, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/animation/Keyframes$FloatKeyframes;

    invoke-interface {v0, p1}, Landroidx/animation/Keyframes$FloatKeyframes;->getFloatValue(F)F

    move-result p1

    iput p1, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    return-void
.end method

.method public clone()Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 1

    .line 1299
    invoke-super {p0}, Landroidx/animation/PropertyValuesHolder;->clone()Landroidx/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 1300
    iget-object v0, p0, Landroidx/animation/PropertyValuesHolder;->mKeyframes:Landroidx/animation/Keyframes;

    check-cast v0, Landroidx/animation/Keyframes$FloatKeyframes;

    iput-object v0, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/animation/Keyframes$FloatKeyframes;

    return-object p0
.end method

.method public bridge synthetic clone()Landroidx/animation/PropertyValuesHolder;
    .locals 0

    .line 1235
    invoke-virtual {p0}, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1235
    invoke-virtual {p0}, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 0

    .line 1294
    iget p0, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    .line 1313
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroidx/animation/FloatProperty;

    if-eqz v1, :cond_0

    .line 1314
    iget p0, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v1, p1, p0}, Landroidx/animation/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    .line 1317
    :cond_0
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1

    .line 1318
    iget p0, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1321
    :cond_1
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 1323
    :try_start_0
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1324
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroidx/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1328
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1326
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 0

    .line 1283
    invoke-super {p0, p1}, Landroidx/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1284
    iget-object p1, p0, Landroidx/animation/PropertyValuesHolder;->mKeyframes:Landroidx/animation/Keyframes;

    check-cast p1, Landroidx/animation/Keyframes$FloatKeyframes;

    iput-object p1, p0, Landroidx/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/animation/Keyframes$FloatKeyframes;

    return-void
.end method
