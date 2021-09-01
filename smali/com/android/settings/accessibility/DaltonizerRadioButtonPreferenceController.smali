.class public Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DaltonizerRadioButtonPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "accessibility_display_daltonizer"


# instance fields
.field private final mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityDaltonizerValue:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mOnChangeListener:Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;

.field private mPreference:Lcom/android/settings/widget/RadioButtonPreference;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getAccessibilityDaltonizerValue()I
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_display_daltonizer"

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->getSecureAccessibilityDaltonizerValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getDaltonizerValueToKeyMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$array;->daltonizer_mode_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$array;->daltonizer_type_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 99
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    aget-object v5, v0, v3

    aget v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    return-object p0
.end method

.method protected static getSecureAccessibilityDaltonizerValue(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 0

    .line 76
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xc

    if-nez p0, :cond_0

    return p1

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private handlePreferenceChange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessibility_display_daltonizer"

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->putSecureString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSecureString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    .line 125
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->getDaltonizerValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->handlePreferenceChange(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mOnChangeListener:Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;

    if-eqz p1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;->onCheckedChanged(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mOnChangeListener:Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;

    return-void
.end method

.method protected updatePreferenceCheckedState(I)V
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerValue:I

    if-ne v0, p1, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->getAccessibilityDaltonizerValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mAccessibilityDaltonizerValue:I

    .line 157
    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->getDaltonizerValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->mPreference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->updatePreferenceCheckedState(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
