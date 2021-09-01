.class public Lcom/android/settings/notification/RemoteVolumeSeekBarPreference;
.super Lcom/android/settings/notification/VolumeSeekBarPreference;
.source "RemoteVolumeSeekBarPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 57
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_0

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStream(I)V
    .locals 0

    return-void
.end method
