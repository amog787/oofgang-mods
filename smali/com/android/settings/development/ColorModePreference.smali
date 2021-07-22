.class public Lcom/android/settings/development/ColorModePreference;
.super Landroidx/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 46
    sget v1, Lcom/android/settings/R$array;->color_mode_ids:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 47
    sget v2, Lcom/android/settings/R$array;->color_mode_names:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 48
    sget v3, Lcom/android/settings/R$array;->color_mode_descriptions:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 50
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 51
    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 52
    new-instance v4, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;-><init>(Lcom/android/settings/development/ColorModePreference$1;)V

    .line 53
    aget v5, v1, v3

    invoke-static {v4, v5}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$102(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;I)I

    .line 54
    aget-object v5, v2, v3

    invoke-static {v4, v5}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$202(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    aget-object v5, p0, v3

    invoke-static {v4, v5}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$302(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    .line 120
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->requestColorMode(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public startListening()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public updateCurrentAndSupported()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    .line 101
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getColorMode()I

    move-result v0

    const/4 v2, -0x1

    .line 104
    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    move v2, v1

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    invoke-static {v3}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 107
    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
