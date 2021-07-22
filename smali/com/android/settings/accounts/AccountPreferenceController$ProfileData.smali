.class public Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;
.super Ljava/lang/Object;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileData"
.end annotation


# instance fields
.field public accountPreferences:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;"
        }
    .end annotation
.end field

.field public addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

.field public authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field public managedProfilePreference:Landroidx/preference/Preference;

.field public pendingRemoval:Z

.field public preferenceGroup:Landroidx/preference/PreferenceGroup;

.field public removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

.field public userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    return-void
.end method
