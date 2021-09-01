.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectRecentLocationRequestFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectRecentLocationRequestFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 32
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "profile"

    const/4 v1, 0x2

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    new-instance v2, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-direct {v2}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;-><init>()V

    .line 35
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-direct {v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;-><init>()V

    .line 40
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v1, [Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object v2, p0, v3

    return-object p0
.end method
