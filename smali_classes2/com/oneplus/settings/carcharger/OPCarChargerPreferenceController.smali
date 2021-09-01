.class public Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPCarChargerPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_AUTO_TURN_ON_CAR_CHARGER:Ljava/lang/String; = "car_charger_auto_turn_on"

.field private static final KEY_AUTO_TURN_ON_DND:Ljava/lang/String; = "car_charger_auto_turn_on_dnd"


# instance fields
.field private KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 50
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v2, "car_charger_auto_turn_on_dnd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v0, "car_charger_auto_turn_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 26
    iget-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v0, "car_charger_auto_turn_on_dnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "on"

    const-string v2, "off"

    if-eqz p2, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string p0, "charge_dnd"

    .line 28
    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v0, "car_charger_auto_turn_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 30
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string p0, "charge_carmode"

    .line 31
    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v1, "car_charger_auto_turn_on_dnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 40
    check-cast p1, Landroidx/preference/SwitchPreference;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v1, "car_charger_auto_turn_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 43
    check-cast p1, Landroidx/preference/SwitchPreference;

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
