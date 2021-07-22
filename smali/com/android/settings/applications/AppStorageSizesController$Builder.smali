.class public Lcom/android/settings/applications/AppStorageSizesController$Builder;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSizesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppSize:Landroidx/preference/Preference;

.field private mCacheSize:Landroidx/preference/Preference;

.field private mComputing:I

.field private mDataSize:Landroidx/preference/Preference;

.field private mError:I

.field private mTotalSize:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/applications/AppStorageSizesController;
    .locals 9

    .line 175
    new-instance v8, Lcom/android/settings/applications/AppStorageSizesController;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mTotalSize:Landroidx/preference/Preference;

    .line 176
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mAppSize:Landroidx/preference/Preference;

    .line 177
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mDataSize:Landroidx/preference/Preference;

    .line 178
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mCacheSize:Landroidx/preference/Preference;

    .line 179
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/preference/Preference;

    iget v5, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mComputing:I

    iget v6, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mError:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController$1;)V

    return-object v8
.end method

.method public setAppSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mAppSize:Landroidx/preference/Preference;

    return-object p0
.end method

.method public setCacheSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mCacheSize:Landroidx/preference/Preference;

    return-object p0
.end method

.method public setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    .line 165
    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mComputing:I

    return-object p0
.end method

.method public setDataSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mDataSize:Landroidx/preference/Preference;

    return-object p0
.end method

.method public setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    .line 170
    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mError:I

    return-object p0
.end method

.method public setTotalSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mTotalSize:Landroidx/preference/Preference;

    return-object p0
.end method
