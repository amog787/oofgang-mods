.class public Lcom/oneplus/common/NavigationButtonUtils;
.super Ljava/lang/Object;
.source "NavigationButtonUtils.java"


# direct methods
.method public static getSystemIntegerRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "integer"

    const-string v1, "android"

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static is3ButtonNavigationBar(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "config_navBarInteractionMode"

    .line 22
    invoke-static {p0, v0}, Lcom/oneplus/common/NavigationButtonUtils;->getSystemIntegerRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGestureButtonShowOnCreen(Landroid/content/Context;)Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "buttons_show_on_screen_navkeys"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isGestureNavigationBar(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "config_navBarInteractionMode"

    .line 18
    invoke-static {p0, v0}, Lcom/oneplus/common/NavigationButtonUtils;->getSystemIntegerRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
