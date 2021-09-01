.class public Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "TimeZoneDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;,
        Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    .locals 0

    .line 36
    invoke-static {}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getInstance()Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;->loadInBackground()Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;->onDiscardResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    return-void
.end method
