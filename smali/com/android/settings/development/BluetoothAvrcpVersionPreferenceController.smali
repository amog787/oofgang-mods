.class public Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothAvrcpVersionPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_AVRCP_VERSION_PROPERTY:Ljava/lang/String; = "persist.bluetooth.avrcpversion"


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bluetooth_avrcp_version_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->bluetooth_avrcp_versions:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_select_avrcp_version"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "persist.bluetooth.avrcpversion"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 64
    check-cast p1, Landroidx/preference/ListPreference;

    const-string v0, "persist.bluetooth.avrcpversion"

    .line 65
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 68
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
