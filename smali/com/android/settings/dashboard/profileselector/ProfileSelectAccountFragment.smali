.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectAccountFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectAccountFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Landroidx/fragment/app/Fragment;

    .line 30
    new-instance v0, Lcom/android/settings/accounts/AccountPersonalDashboardFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountPersonalDashboardFragment;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    new-instance v0, Lcom/android/settings/accounts/AccountWorkProfileDashboardFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountWorkProfileDashboardFragment;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method
