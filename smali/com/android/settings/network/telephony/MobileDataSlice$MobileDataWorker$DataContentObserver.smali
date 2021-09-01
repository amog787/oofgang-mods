.class public Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataContentObserver"
.end annotation


# instance fields
.field private final mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V
    .locals 0

    .line 249
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 250
    iput-object p3, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->updateSlice()V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 259
    invoke-static {p1, p2}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
