.class public Lcom/android/settingslib/utils/ProductUtils;
.super Ljava/lang/Object;
.source "ProductUtils.java"


# direct methods
.method public static isUsvMode()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe7

    aput v2, v0, v1

    .line 25
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method
