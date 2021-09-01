.class public Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecondaryUserController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;
    }
.end annotation


# instance fields
.field private mSize:J

.field private mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSizeBytes:J

.field private mUser:Landroid/content/pm/UserInfo;

.field private mUserIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    const-wide/16 p1, -0x1

    .line 104
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    return-void
.end method

.method public static getSecondaryUserControllers(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    .line 75
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 76
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_2

    .line 80
    invoke-static {v1, v5}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    new-instance v4, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 89
    new-instance p1, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private maybeSetIcon()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_secondary_users"

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 116
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    :cond_0
    const/4 v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 122
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getUser()Landroid/content/pm/UserInfo;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    return-object p0
.end method

.method public handleResult(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 167
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, p1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setSize(J)V

    :cond_0
    return-void
.end method

.method public handleUserIcons(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setSize(J)V
    .locals 3

    .line 150
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 152
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    :cond_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 162
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    return-void
.end method
