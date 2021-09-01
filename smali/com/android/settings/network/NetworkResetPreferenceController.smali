.class public Lcom/android/settings/network/NetworkResetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkResetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-direct {v0, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "network_reset_pref"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetRestrictionChecker;->hasUserRestriction()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
