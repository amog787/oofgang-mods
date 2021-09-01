.class public Lcom/android/settings/datausage/DataSaverPreference;
.super Landroidx/preference/Preference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 36
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    sget p1, Lcom/android/settings/R$string;->data_saver_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->data_saver_off:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 42
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
