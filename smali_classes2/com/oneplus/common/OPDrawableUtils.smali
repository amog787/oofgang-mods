.class public Lcom/oneplus/common/OPDrawableUtils;
.super Ljava/lang/Object;
.source "OPDrawableUtils.java"


# static fields
.field private static sSetConstantStateMethod:Ljava/lang/reflect/Method;

.field private static sSetConstantStateMethodFetched:Z


# direct methods
.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 75
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    .line 78
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_2

    .line 79
    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 81
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 82
    invoke-static {v3}, Lcom/oneplus/common/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_2

    .line 88
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/common/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/oneplus/common/OPDrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result p0

    return p0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 7

    .line 49
    sget-boolean v0, Lcom/oneplus/common/OPDrawableUtils;->sSetConstantStateMethodFetched:Z

    const-string v1, "DrawableUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    const-class v0, Landroid/graphics/drawable/DrawableContainer;

    const-string v4, "setConstantState"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/common/OPDrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not fetch setConstantState(). Oh well."

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    sput-boolean v3, Lcom/oneplus/common/OPDrawableUtils;->sSetConstantStateMethodFetched:Z

    .line 59
    :cond_0
    sget-object v0, Lcom/oneplus/common/OPDrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 61
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    const-string p0, "Could not invoke setConstantState(). Oh well."

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method
